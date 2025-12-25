// lstm_example.cu
// Minimal CUDA implementation of a single-step LSTM cell.
// Follows the standard definition:
// i = sigmoid(W_ii x_t + b_ii + W_hi h_{t-1} + b_hi)
// f = sigmoid(W_if x_t + b_if + W_hf h_{t-1} + b_hf)
// g = tanh   (W_ig x_t + b_ig + W_hg h_{t-1} + b_hg)
// o = sigmoid(W_io x_t + b_io + W_ho h_{t-1} + b_ho)
// c_t = f * c_{t-1} + i * g
// h_t = o * tanh(c_t)

#include <cstdio>
#include <cmath>
#include <cuda_runtime.h>

#define CUDA_CHECK(call)                                                    \
    do {                                                                    \
        cudaError_t err = (call);                                           \
        if (err != cudaSuccess) {                                           \
            fprintf(stderr, "CUDA error at %s:%d: %s\n",                    \
                    __FILE__, __LINE__, cudaGetErrorString(err));           \
            std::exit(EXIT_FAILURE);                                        \
        }                                                                   \
    } while (0)

__device__ float d_sigmoid(float x) {
    return 1.0f / (1.0f + expf(-x));
}

__device__ float d_tanhf(float x) {
    return tanhf(x);
}

// Each thread computes one h_new[b, j] and c_new[b, j]
__global__ void lstm_step_kernel(
    const float* __restrict__ x,        // [batch_size, input_size]
    const float* __restrict__ h_prev,   // [batch_size, hidden_size]
    const float* __restrict__ c_prev,   // [batch_size, hidden_size]
    const float* __restrict__ W_ih,     // [input_size, 4*hidden_size]
    const float* __restrict__ W_hh,     // [hidden_size, 4*hidden_size]
    const float* __restrict__ b_ih,     // [4*hidden_size]
    const float* __restrict__ b_hh,     // [4*hidden_size]
    float* __restrict__ h_new,          // [batch_size, hidden_size]
    float* __restrict__ c_new,          // [batch_size, hidden_size]
    int batch_size,
    int input_size,
    int hidden_size
) {
    int j = blockIdx.x * blockDim.x + threadIdx.x;   // hidden index
    int b = blockIdx.y * blockDim.y + threadIdx.y;   // batch index

    if (j >= hidden_size || b >= batch_size) return;

    int H = hidden_size;

    // Linear outputs for 4 gates: [i, f, g, o]
    float gates[4] = {0.f, 0.f, 0.f, 0.f};

    // Bias contribution
    for (int g = 0; g < 4; ++g) {
        int idx = g * H + j;
        gates[g] = b_ih[idx] + b_hh[idx];
    }

    // x contribution
    for (int i = 0; i < input_size; ++i) {
        float x_val = x[b * input_size + i];
        for (int g = 0; g < 4; ++g) {
            int idx = i * (4 * H) + g * H + j;  // W_ih[i, g*H + j]
            float w = W_ih[idx];
            gates[g] += x_val * w;
        }
    }

    // h_prev contribution
    for (int k = 0; k < hidden_size; ++k) {
        float h_val = h_prev[b * hidden_size + k];
        for (int g = 0; g < 4; ++g) {
            int idx = k * (4 * H) + g * H + j;  // W_hh[k, g*H + j]
            float w = W_hh[idx];
            gates[g] += h_val * w;
        }
    }

    float i_gate = d_sigmoid(gates[0]);
    float f_gate = d_sigmoid(gates[1]);
    float g_gate = d_tanhf (gates[2]);
    float o_gate = d_sigmoid(gates[3]);

    float c_prev_val = c_prev[b * H + j];
    float c_val = f_gate * c_prev_val + i_gate * g_gate;
    float h_val = o_gate * d_tanhf(c_val);

    c_new[b * H + j] = c_val;
    h_new[b * H + j] = h_val;
}

int main() {
    const int batch_size  = 2;
    const int input_size  = 3;
    const int hidden_size = 4;

    size_t x_bytes      = batch_size * input_size  * sizeof(float);
    size_t h_bytes      = batch_size * hidden_size * sizeof(float);
    size_t c_bytes      = batch_size * hidden_size * sizeof(float);
    size_t W_ih_bytes   = input_size * 4 * hidden_size * sizeof(float);
    size_t W_hh_bytes   = hidden_size * 4 * hidden_size * sizeof(float);
    size_t b_bytes      = 4 * hidden_size * sizeof(float);

    // Host buffers
    float h_x[batch_size * input_size];
    float h_h_prev[batch_size * hidden_size];
    float h_c_prev[batch_size * hidden_size];
    float h_W_ih[input_size * 4 * hidden_size];
    float h_W_hh[hidden_size * 4 * hidden_size];
    float h_b_ih[4 * hidden_size];
    float h_b_hh[4 * hidden_size];
    float h_h_new[batch_size * hidden_size];
    float h_c_new[batch_size * hidden_size];

    // Initialize data with simple values for testing
    for (int i = 0; i < batch_size * input_size; ++i)
        h_x[i] = 0.1f * (i + 1);
    for (int i = 0; i < batch_size * hidden_size; ++i) {
        h_h_prev[i] = 0.01f * (i + 1);
        h_c_prev[i] = 0.02f * (i + 1);
    }
    for (int i = 0; i < input_size * 4 * hidden_size; ++i)
        h_W_ih[i] = 0.05f * ((i % 7) - 3);
    for (int i = 0; i < hidden_size * 4 * hidden_size; ++i)
        h_W_hh[i] = 0.03f * ((i % 5) - 2);
    for (int i = 0; i < 4 * hidden_size; ++i) {
        h_b_ih[i] = 0.01f * i;
        h_b_hh[i] = -0.005f * i;
    }

    // Device buffers
    float *d_x, *d_h_prev, *d_c_prev, *d_W_ih, *d_W_hh, *d_b_ih, *d_b_hh, *d_h_new, *d_c_new;
    CUDA_CHECK(cudaMalloc(&d_x, x_bytes));
    CUDA_CHECK(cudaMalloc(&d_h_prev, h_bytes));
    CUDA_CHECK(cudaMalloc(&d_c_prev, c_bytes));
    CUDA_CHECK(cudaMalloc(&d_W_ih, W_ih_bytes));
    CUDA_CHECK(cudaMalloc(&d_W_hh, W_hh_bytes));
    CUDA_CHECK(cudaMalloc(&d_b_ih, b_bytes));
    CUDA_CHECK(cudaMalloc(&d_b_hh, b_bytes));
    CUDA_CHECK(cudaMalloc(&d_h_new, h_bytes));
    CUDA_CHECK(cudaMalloc(&d_c_new, c_bytes));

    CUDA_CHECK(cudaMemcpy(d_x, h_x, x_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_h_prev, h_h_prev, h_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_c_prev, h_c_prev, c_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_W_ih, h_W_ih, W_ih_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_W_hh, h_W_hh, W_hh_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_b_ih, h_b_ih, b_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_b_hh, h_b_hh, b_bytes, cudaMemcpyHostToDevice));

    dim3 blockDim(16, 4);
    dim3 gridDim((hidden_size + blockDim.x - 1) / blockDim.x,
                 (batch_size + blockDim.y - 1) / blockDim.y);

    lstm_step_kernel<<<gridDim, blockDim>>>(
        d_x, d_h_prev, d_c_prev,
        d_W_ih, d_W_hh, d_b_ih, d_b_hh,
        d_h_new, d_c_new,
        batch_size, input_size, hidden_size
    );
    CUDA_CHECK(cudaDeviceSynchronize());

    CUDA_CHECK(cudaMemcpy(h_h_new, d_h_new, h_bytes, cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(h_c_new, d_c_new, c_bytes, cudaMemcpyDeviceToHost));

    printf("LSTM h_new:\n");
    for (int b = 0; b < batch_size; ++b) {
        for (int j = 0; j < hidden_size; ++j) {
            printf(" % .5f", h_h_new[b * hidden_size + j]);
        }
        printf("\n");
    }

    printf("LSTM c_new:\n");
    for (int b = 0; b < batch_size; ++b) {
        for (int j = 0; j < hidden_size; ++j) {
            printf(" % .5f", h_c_new[b * hidden_size + j]);
        }
        printf("\n");
    }

    cudaFree(d_x);
    cudaFree(d_h_prev);
    cudaFree(d_c_prev);
    cudaFree(d_W_ih);
    cudaFree(d_W_hh);
    cudaFree(d_b_ih);
    cudaFree(d_b_hh);
    cudaFree(d_h_new);
    cudaFree(d_c_new);

    return 0;
}
