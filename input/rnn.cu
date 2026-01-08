// rnn_example.cu
// Minimal CUDA implementation of a single-step tanh RNN cell.
// Equations follow the standard RNN definition used in frameworks like PyTorch:
// h_t = tanh(W_ih x_t + b_ih + W_hh h_{t-1} + b_hh)

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

// Simple tanh activation
__device__ float d_tanhf(float x) {
    return tanhf(x);
}

// Each thread computes one element h_new[b, j]
__global__ void rnn_tanh_step_kernel(
    const float* __restrict__ x,        // [batch_size, input_size]
    const float* __restrict__ h_prev,   // [batch_size, hidden_size]
    const float* __restrict__ W_ih,     // [input_size, hidden_size]
    const float* __restrict__ W_hh,     // [hidden_size, hidden_size]
    const float* __restrict__ b_ih,     // [hidden_size]
    const float* __restrict__ b_hh,     // [hidden_size]
    float* __restrict__ h_new,          // [batch_size, hidden_size]
    int batch_size,
    int input_size,
    int hidden_size
) {
    int j = blockIdx.x * blockDim.x + threadIdx.x;   // hidden index
    int b = blockIdx.y * blockDim.y + threadIdx.y;   // batch index

    if (j >= hidden_size || b >= batch_size) return;

    // Compute linear part: W_ih x_t + b_ih + W_hh h_{t-1} + b_hh
    float sum = b_ih[j] + b_hh[j];

    // x part
    for (int i = 0; i < input_size; ++i) {
        float x_val = x[b * input_size + i];
        float w = W_ih[i * hidden_size + j];  // row-major: [input_size, hidden_size]
        sum += x_val * w;
    }

    // h_prev part
    for (int k = 0; k < hidden_size; ++k) {
        float h_val = h_prev[b * hidden_size + k];
        float w = W_hh[k * hidden_size + j];  // row-major: [hidden_size, hidden_size]
        sum += h_val * w;
    }

    // Apply tanh
    h_new[b * hidden_size + j] = d_tanhf(sum);
}

int main() {
    const int batch_size  = 2;
    const int input_size  = 3;
    const int hidden_size = 4;

    size_t x_bytes      = batch_size * input_size  * sizeof(float);
    size_t h_bytes      = batch_size * hidden_size * sizeof(float);
    size_t W_ih_bytes   = input_size * hidden_size * sizeof(float);
    size_t W_hh_bytes   = hidden_size * hidden_size * sizeof(float);
    size_t b_bytes      = hidden_size * sizeof(float);

    // Host buffers
    float h_x[batch_size * input_size];
    float h_h_prev[batch_size * hidden_size];
    float h_W_ih[input_size * hidden_size];
    float h_W_hh[hidden_size * hidden_size];
    float h_b_ih[hidden_size];
    float h_b_hh[hidden_size];
    float h_h_new[batch_size * hidden_size];

    // Initialize host data with small deterministic values
    for (int i = 0; i < batch_size * input_size; ++i)
        h_x[i] = 0.1f * (i + 1);
    for (int i = 0; i < batch_size * hidden_size; ++i)
        h_h_prev[i] = 0.01f * (i + 1);
    for (int i = 0; i < input_size * hidden_size; ++i)
        h_W_ih[i] = 0.05f * ((i % 7) - 3); // some small weights
    for (int i = 0; i < hidden_size * hidden_size; ++i)
        h_W_hh[i] = 0.03f * ((i % 5) - 2);
    for (int i = 0; i < hidden_size; ++i) {
        h_b_ih[i] = 0.01f * i;
        h_b_hh[i] = -0.01f * i;
    }

    // Device buffers
    float *d_x, *d_h_prev, *d_W_ih, *d_W_hh, *d_b_ih, *d_b_hh, *d_h_new;
    CUDA_CHECK(cudaMalloc(&d_x, x_bytes));
    CUDA_CHECK(cudaMalloc(&d_h_prev, h_bytes));
    CUDA_CHECK(cudaMalloc(&d_W_ih, W_ih_bytes));
    CUDA_CHECK(cudaMalloc(&d_W_hh, W_hh_bytes));
    CUDA_CHECK(cudaMalloc(&d_b_ih, b_bytes));
    CUDA_CHECK(cudaMalloc(&d_b_hh, b_bytes));
    CUDA_CHECK(cudaMalloc(&d_h_new, h_bytes));

    CUDA_CHECK(cudaMemcpy(d_x, h_x, x_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_h_prev, h_h_prev, h_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_W_ih, h_W_ih, W_ih_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_W_hh, h_W_hh, W_hh_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_b_ih, h_b_ih, b_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_b_hh, h_b_hh, b_bytes, cudaMemcpyHostToDevice));

    dim3 blockDim(16, 4);
    dim3 gridDim((hidden_size + blockDim.x - 1) / blockDim.x,
                 (batch_size + blockDim.y - 1) / blockDim.y);

    rnn_tanh_step_kernel<<<gridDim, blockDim>>>(
        d_x, d_h_prev, d_W_ih, d_W_hh, d_b_ih, d_b_hh,
        d_h_new, batch_size, input_size, hidden_size
    );
    CUDA_CHECK(cudaDeviceSynchronize());

    CUDA_CHECK(cudaMemcpy(h_h_new, d_h_new, h_bytes, cudaMemcpyDeviceToHost));

    // Print results
    printf("RNN h_new:\n");
    for (int b = 0; b < batch_size; ++b) {
        for (int j = 0; j < hidden_size; ++j) {
            printf(" % .5f", h_h_new[b * hidden_size + j]);
        }
        printf("\n");
    }

    cudaFree(d_x);
    cudaFree(d_h_prev);
    cudaFree(d_W_ih);
    cudaFree(d_W_hh);
    cudaFree(d_b_ih);
    cudaFree(d_b_hh);
    cudaFree(d_h_new);

    return 0;
}
