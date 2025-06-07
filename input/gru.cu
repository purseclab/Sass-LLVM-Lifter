#include <stdio.h>
#include <cuda_runtime.h>
#include <math.h>
#include <stdlib.h>

#define INPUT_SIZE 32  // Input feature size
#define HIDDEN_SIZE 64 // Hidden state size
#define SEQ_LEN 10     // Sequence length

// CUDA error check macro
#define CHECK(call) { \
    const cudaError_t error = call; \
    if (error != cudaSuccess) { \
        printf("Error: %s:%d, ", __FILE__, __LINE__); \
        printf("code:%d, reason: %s\n", error, cudaGetErrorString(error)); \
        exit(1); \
    } \
}

// Sigmoid activation function
__device__ float sigmoid(float x) {
    return 1.0f / (1.0f + expf(-x));
}

// GRU forward pass kernel
__global__ void gru_forward(float *x, float *h, float *w, float *b, 
                            int input_size, int hidden_size, int seq_len) {
    int idx = threadIdx.x + blockIdx.x * blockDim.x;
    if (idx >= hidden_size) return;
    
    for (int t = 0; t < seq_len; ++t) {
        float r_t = 0, z_t = 0, n_t = 0;
        int offset_x = t * input_size;
        int offset_h = idx * hidden_size;

        for (int i = 0; i < input_size; ++i) {
            int w_idx = idx * input_size + i;
            r_t += x[offset_x + i] * w[w_idx];
            z_t += x[offset_x + i] * w[w_idx + hidden_size];
            n_t += x[offset_x + i] * w[w_idx + 2 * hidden_size];
        }
        
        for (int i = 0; i < hidden_size; ++i) {
            int w_idx = offset_h + i;
            r_t += h[i] * w[w_idx + 3 * hidden_size * input_size];
            z_t += h[i] * w[w_idx + 4 * hidden_size * input_size];
        }
        
        r_t = sigmoid(r_t + b[idx]);
        z_t = sigmoid(z_t + b[idx + hidden_size]);
        
        for (int i = 0; i < hidden_size; ++i) {
            int w_idx = offset_h + i;
            n_t += (r_t * h[i]) * w[w_idx + 5 * hidden_size * input_size];
        }
        n_t = tanhf(n_t + b[idx + 2 * hidden_size]);
        
        h[idx] = (1 - z_t) * n_t + z_t * h[idx];
    }
}

int main() {
    // Allocate host memory
    float *h_x = (float*)malloc(SEQ_LEN * INPUT_SIZE * sizeof(float));
    float *h_h = (float*)malloc(HIDDEN_SIZE * sizeof(float));
    float *h_w = (float*)malloc(6 * HIDDEN_SIZE * INPUT_SIZE * sizeof(float));
    float *h_b = (float*)malloc(3 * HIDDEN_SIZE * sizeof(float));
    
    // Initialize input and weights with random values
    for (int i = 0; i < SEQ_LEN * INPUT_SIZE; ++i)
        h_x[i] = (float)rand() / RAND_MAX;
    for (int i = 0; i < HIDDEN_SIZE; ++i)
        h_h[i] = 0;
    for (int i = 0; i < 6 * HIDDEN_SIZE * INPUT_SIZE; ++i)
        h_w[i] = (float)rand() / RAND_MAX - 0.5f;
    for (int i = 0; i < 3 * HIDDEN_SIZE; ++i)
        h_b[i] = (float)rand() / RAND_MAX - 0.5f;
    
    // Allocate device memory
    float *d_x, *d_h, *d_w, *d_b;
    CHECK(cudaMalloc(&d_x, SEQ_LEN * INPUT_SIZE * sizeof(float)));
    CHECK(cudaMalloc(&d_h, HIDDEN_SIZE * sizeof(float)));
    CHECK(cudaMalloc(&d_w, 6 * HIDDEN_SIZE * INPUT_SIZE * sizeof(float)));
    CHECK(cudaMalloc(&d_b, 3 * HIDDEN_SIZE * sizeof(float)));
    
    // Copy data to device
    CHECK(cudaMemcpy(d_x, h_x, SEQ_LEN * INPUT_SIZE * sizeof(float), cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_h, h_h, HIDDEN_SIZE * sizeof(float), cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_w, h_w, 6 * HIDDEN_SIZE * INPUT_SIZE * sizeof(float), cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_b, h_b, 3 * HIDDEN_SIZE * sizeof(float), cudaMemcpyHostToDevice));
    
    // Launch GRU forward kernel
    int threadsPerBlock = 256;
    int numBlocks = (HIDDEN_SIZE + threadsPerBlock - 1) / threadsPerBlock;
    gru_forward<<<numBlocks, threadsPerBlock>>>(d_x, d_h, d_w, d_b, INPUT_SIZE, HIDDEN_SIZE, SEQ_LEN);
    CHECK(cudaGetLastError());
    
    // Copy results back to host
    CHECK(cudaMemcpy(h_h, d_h, HIDDEN_SIZE * sizeof(float), cudaMemcpyDeviceToHost));
    
    // Print final hidden state
    printf("Final hidden state:\n");
    for (int i = 0; i < HIDDEN_SIZE; ++i) {
        printf("%.4f ", h_h[i]);
    }
    printf("\n");
    
    // Free memory
    CHECK(cudaFree(d_x));
    CHECK(cudaFree(d_h));
    CHECK(cudaFree(d_w));
    CHECK(cudaFree(d_b));
    
    free(h_x);
    free(h_h);
    free(h_w);
    free(h_b);
    
    return 0;
}
