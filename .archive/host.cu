#include <cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>


__global__ void fc_layer_wrapper(float *input, float *weights, float *bias, float *output, int input_size, int output_size);

int main() {
    // Example dimensions
    int input_size = 4;
    int output_size = 2;

    // Host memory
    float *h_input = (float*)malloc(input_size * sizeof(float));
    float *h_weights = (float*)malloc(input_size * output_size * sizeof(float));
    float *h_bias = (float*)malloc(output_size * sizeof(float));
    float *h_output = (float*)malloc(output_size * sizeof(float));

    // Initialize input data (example: simple values)
    for (int i = 0; i < input_size; i++) {
        h_input[i] = (float)i;
    }
    for (int i = 0; i < input_size * output_size; i++) {
        h_weights[i] = 1.0f; // Example: all weights = 1
    }
    for (int i = 0; i < output_size; i++) {
        h_bias[i] = 0.5f; // Example: bias = 0.5
    }

    // Device memory
    float *d_input, *d_weights, *d_bias, *d_output;
    cudaMalloc(&d_input, input_size * sizeof(float));
    cudaMalloc(&d_weights, input_size * output_size * sizeof(float));
    cudaMalloc(&d_bias, output_size * sizeof(float));
    cudaMalloc(&d_output, output_size * sizeof(float));

    // Copy data to device
    cudaMemcpy(d_input, h_input, input_size * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_weights, h_weights, input_size * output_size * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_bias, h_bias, output_size * sizeof(float), cudaMemcpyHostToDevice);

    // Launch kernel (1 block, output_size threads for simplicity)
    fc_layer_wrapper<<<1, output_size>>>(d_input, d_weights, d_bias, d_output, input_size, output_size);

    // Check for launch errors
    cudaError_t err = cudaGetLastError();
    if (err != cudaSuccess) {
        printf("CUDA Launch Error: %s\n", cudaGetErrorString(err));
        return 1;
    }

    // Synchronize
    err = cudaDeviceSynchronize();
    if (err != cudaSuccess) {
        printf("CUDA Sync Error: %s\n", cudaGetErrorString(err));
        return 1;
    }

    // Copy output back to host
    cudaMemcpy(h_output, d_output, output_size * sizeof(float), cudaMemcpyDeviceToHost);

    // Print results (for verification)
    printf("Output:\n");
    for (int i = 0; i < output_size; i++) {
        printf("output[%d] = %f\n", i, h_output[i]);
    }

    // Cleanup
    cudaFree(d_input);
    cudaFree(d_weights);
    cudaFree(d_bias);
    cudaFree(d_output);
    free(h_input);
    free(h_weights);
    free(h_bias);
    free(h_output);

    printf("Kernel executed successfully!\n");
    return 0;
}