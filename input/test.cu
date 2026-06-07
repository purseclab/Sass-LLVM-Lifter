#include <stdio.h>
#include <cuda_runtime.h>
#include <math.h>
#include <stdlib.h>

// Network parameter definitions
#define INPUT_SIZE 28        // Input image size
#define INPUT_CHANNELS 1      // Number of input channels
#define CONV_KERNEL_SIZE 3    // Convolution kernel size
#define CONV_OUT_CHANNELS 4   // Number of convolution output channels
#define POOL_SIZE 2           // Pooling size
#define FC_OUTPUT_SIZE 10     // Fully connected layer output dimension

// Derived sizes
#define CONV_OUTPUT_SIZE (INPUT_SIZE - CONV_KERNEL_SIZE + 1)
#define POOL_OUTPUT_SIZE (CONV_OUTPUT_SIZE / POOL_SIZE)
#define FC_INPUT_SIZE (CONV_OUT_CHANNELS * POOL_OUTPUT_SIZE * POOL_OUTPUT_SIZE)

// CUDA error checking macro
#define CHECK(call) { \
    const cudaError_t error = call; \
    if (error != cudaSuccess) { \
        printf("Error: %s:%d, ", __FILE__, __LINE__); \
        printf("code:%d, reason: %s\n", error, cudaGetErrorString(error)); \
        exit(1); \
    } \
}

// Convolution kernel function
__global__ void conv2d(float *input, float *kernels, float *output,
                       int input_size, int kernel_size,
                       int input_channels, int output_channels) {
    // Compute output position
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;
    int f = blockIdx.z;

    if (x >= (input_size - kernel_size + 1) ||
        y >= (input_size - kernel_size + 1) ||
        f >= output_channels) return;

    float sum = 0.0f;
    for (int c = 0; c < input_channels; ++c) {
        for (int i = 0; i < kernel_size; ++i) {
            for (int j = 0; j < kernel_size; ++j) {
                int input_idx = c * input_size * input_size + (y + j) * input_size + (x + i);
                int kernel_idx = f * input_channels * kernel_size * kernel_size
                               + c * kernel_size * kernel_size + i * kernel_size + j;
                sum += input[input_idx] * kernels[kernel_idx];
            }
        }
    }
    int output_size = input_size - kernel_size + 1;
    int output_idx = f * output_size * output_size + y * output_size + x;
    output[output_idx] = sum;
}

// ReLU activation function
__global__ void relu(float *input, float *output, int size) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < size)
        output[idx] = fmaxf(0.0f, input[idx]);
}

// Max pooling
__global__ void max_pool2d(float *input, float *output,
                          int input_size, int pool_size, int channels) {
    int c = blockIdx.z;
    int x_out = blockIdx.x * blockDim.x + threadIdx.x;
    int y_out = blockIdx.y * blockDim.y + threadIdx.y;

    int output_size = input_size / pool_size;
    if (x_out >= output_size || y_out >= output_size || c >= channels) return;

    float max_val = -INFINITY;
    for (int i = 0; i < pool_size; ++i) {
        for (int j = 0; j < pool_size; ++j) {
            int y_in = y_out * pool_size + j;
            int x_in = x_out * pool_size + i;
            int input_idx = c * input_size * input_size + y_in * input_size + x_in;
            max_val = fmaxf(max_val, input[input_idx]);
        }
    }
    int output_idx = c * output_size * output_size + y_out * output_size + x_out;
    output[output_idx] = max_val;
}

// Fully connected layer
__global__ void fc_layer(float *input, float *weights, float *bias,
                        float *output, int input_size, int output_size) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx >= output_size) return;

    float sum = 0.0f;
    for (int i = 0; i < input_size; ++i) {
        sum += input[i] * weights[idx * input_size + i];
    }
    sum += bias[idx];
    output[idx] = sum;
}

__global__ void fc_layer_simple(float *input, float *weights, float *bias,
                        float *output, int input_size, int output_size) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx >= output_size) return;

    float sum = 0.0f;
    for (int i = 0; i < input_size - 1; ++i) {
        sum += input[i] * weights[idx * input_size + i];
    }
    sum += bias[idx];
    output[idx] = sum;
}

int main() {
    // Host memory allocation
    float *h_input = (float*)malloc(INPUT_SIZE * INPUT_SIZE * INPUT_CHANNELS * sizeof(float));
    float *h_conv_kernels = (float*)malloc(CONV_KERNEL_SIZE * CONV_KERNEL_SIZE
                                        * INPUT_CHANNELS * CONV_OUT_CHANNELS * sizeof(float));
    float *h_fc_weights = (float*)malloc(FC_INPUT_SIZE * FC_OUTPUT_SIZE * sizeof(float));
    float *h_fc_bias = (float*)malloc(FC_OUTPUT_SIZE * sizeof(float));
    float *h_output = (float*)malloc(FC_OUTPUT_SIZE * sizeof(float));

    // Initialize data (using random values)
    for (int i = 0; i < INPUT_SIZE * INPUT_SIZE * INPUT_CHANNELS; ++i)
        h_input[i] = (float)rand() / RAND_MAX;

    for (int i = 0; i < CONV_KERNEL_SIZE * CONV_KERNEL_SIZE * INPUT_CHANNELS * CONV_OUT_CHANNELS; ++i)
        h_conv_kernels[i] = (float)rand() / RAND_MAX - 0.5f;

    for (int i = 0; i < FC_INPUT_SIZE * FC_OUTPUT_SIZE; ++i)
        h_fc_weights[i] = (float)rand() / RAND_MAX - 0.5f;

    for (int i = 0; i < FC_OUTPUT_SIZE; ++i)
        h_fc_bias[i] = (float)rand() / RAND_MAX - 0.5f;

    // Device memory allocation
    float *d_input, *d_conv_kernels, *d_conv_output, *d_relu_output;
    float *d_pool_output, *d_fc_weights, *d_fc_bias, *d_fc_output;

    CHECK(cudaMalloc(&d_input, INPUT_SIZE * INPUT_SIZE * INPUT_CHANNELS * sizeof(float)));
    CHECK(cudaMalloc(&d_conv_kernels, CONV_KERNEL_SIZE * CONV_KERNEL_SIZE
                   * INPUT_CHANNELS * CONV_OUT_CHANNELS * sizeof(float)));
    CHECK(cudaMalloc(&d_conv_output, CONV_OUT_CHANNELS * CONV_OUTPUT_SIZE
                   * CONV_OUTPUT_SIZE * sizeof(float)));
    CHECK(cudaMalloc(&d_relu_output, CONV_OUT_CHANNELS * CONV_OUTPUT_SIZE
                   * CONV_OUTPUT_SIZE * sizeof(float)));
    CHECK(cudaMalloc(&d_pool_output, CONV_OUT_CHANNELS * POOL_OUTPUT_SIZE
                   * POOL_OUTPUT_SIZE * sizeof(float)));
    CHECK(cudaMalloc(&d_fc_weights, FC_INPUT_SIZE * FC_OUTPUT_SIZE * sizeof(float)));
    CHECK(cudaMalloc(&d_fc_bias, FC_OUTPUT_SIZE * sizeof(float)));
    CHECK(cudaMalloc(&d_fc_output, FC_OUTPUT_SIZE * sizeof(float)));

    // Copy data to device
    CHECK(cudaMemcpy(d_input, h_input, INPUT_SIZE * INPUT_SIZE * INPUT_CHANNELS * sizeof(float),
                   cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_conv_kernels, h_conv_kernels,
                   CONV_KERNEL_SIZE * CONV_KERNEL_SIZE * INPUT_CHANNELS * CONV_OUT_CHANNELS * sizeof(float),
                   cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_fc_weights, h_fc_weights, FC_INPUT_SIZE * FC_OUTPUT_SIZE * sizeof(float),
                   cudaMemcpyHostToDevice));
    CHECK(cudaMemcpy(d_fc_bias, h_fc_bias, FC_OUTPUT_SIZE * sizeof(float),
                   cudaMemcpyHostToDevice));

    // Execute convolution
    dim3 conv_block(16, 16);
    dim3 conv_grid((CONV_OUTPUT_SIZE + conv_block.x - 1) / conv_block.x,
                  (CONV_OUTPUT_SIZE + conv_block.y - 1) / conv_block.y,
                  CONV_OUT_CHANNELS);
    conv2d<<<conv_grid, conv_block>>>(d_input, d_conv_kernels, d_conv_output,
                                     INPUT_SIZE, CONV_KERNEL_SIZE,
                                     INPUT_CHANNELS, CONV_OUT_CHANNELS);
    CHECK(cudaGetLastError());

    // Execute ReLU
    int relu_size = CONV_OUT_CHANNELS * CONV_OUTPUT_SIZE * CONV_OUTPUT_SIZE;
    relu<<<(relu_size + 255) / 256, 256>>>(d_conv_output, d_relu_output, relu_size);
    CHECK(cudaGetLastError());

    // Execute max pooling
    dim3 pool_block(8, 8);
    dim3 pool_grid((POOL_OUTPUT_SIZE + pool_block.x - 1) / pool_block.x,
                  (POOL_OUTPUT_SIZE + pool_block.y - 1) / pool_block.y,
                  CONV_OUT_CHANNELS);
    max_pool2d<<<pool_grid, pool_block>>>(d_relu_output, d_pool_output,
                                         CONV_OUTPUT_SIZE, POOL_SIZE, CONV_OUT_CHANNELS);
    CHECK(cudaGetLastError());

    // Execute fully connected layer
    fc_layer<<<(FC_OUTPUT_SIZE + 255) / 256, 256>>>(d_pool_output, d_fc_weights, d_fc_bias,
                                                   d_fc_output, FC_INPUT_SIZE, FC_OUTPUT_SIZE);
    CHECK(cudaGetLastError());

    // Copy result back to host
    CHECK(cudaMemcpy(h_output, d_fc_output, FC_OUTPUT_SIZE * sizeof(float),
                   cudaMemcpyDeviceToHost));

    // Print results
    printf("Inference results:\n");
    for (int i = 0; i < FC_OUTPUT_SIZE; ++i) {
        printf("%.4f ", h_output[i]);
    }
    printf("\n");

    // Free resources
    CHECK(cudaFree(d_input));
    CHECK(cudaFree(d_conv_kernels));
    CHECK(cudaFree(d_conv_output));
    CHECK(cudaFree(d_relu_output));
    CHECK(cudaFree(d_pool_output));
    CHECK(cudaFree(d_fc_weights));
    CHECK(cudaFree(d_fc_bias));
    CHECK(cudaFree(d_fc_output));

    free(h_input);
    free(h_conv_kernels);
    free(h_fc_weights);
    free(h_fc_bias);
    free(h_output);

    return 0;
}
