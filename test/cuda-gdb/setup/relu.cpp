// relu_setup.c (example input/setup file for the ReLU test)
#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>


#define CHECK_CU(err) do { \
    CUresult res = (err); \
    if (res != CUDA_SUCCESS) { \
        const char *msg; \
        cuGetErrorString(res, &msg); \
        fprintf(stderr, "CUDA Driver API error: %s\n", msg); \
        exit(1); \
    } \
} while(0)


void prepare_input(float** h_input, float** h_output, int* size, size_t* bytes) {
    *size = 1024;
    *bytes = *size * sizeof(float);
    *h_input = (float*)malloc(*bytes);
    *h_output = (float*)malloc(*bytes);
    for (int i = 0; i < *size; i++) {
        (*h_input)[i] = (i % 2 == 0) ? -1.0f * i : (float)i;
    }
}

void print_output(float* h_output, int size) {
    for (int i = 0; i < 10; i++) {
        printf("h_output[%d] = %f\n", i, h_output[i]);
    }
}

void cleanup_host(float* h_input, float* h_output) {
    free(h_input);
    free(h_output);
}

void launch_kernel(CUfunction kernel_func, CUdeviceptr d_input, CUdeviceptr d_output, int size) {
    // Kernel launch configuration (assuming 1D grid/block for simplicity)
    int threads = 256;
    int blocks = (size + threads - 1) / threads;

    void *args[] = { &d_input, &d_output, &size };

    // Launch kernel
    CHECK_CU(cuLaunchKernel(
        kernel_func,
        blocks, 1, 1,      // grid
        threads, 1, 1,     // block
        0,                 // shared memory
        0,                 // stream
        args,
        nullptr
    ));
}