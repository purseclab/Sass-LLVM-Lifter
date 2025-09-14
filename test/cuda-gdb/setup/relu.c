// relu_setup.c
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

// ------------------ Setup Functions ------------------

void prepare_input(void** h_inputs, int* num_inputs,
                   void** h_outputs, int* num_outputs,
                   size_t** input_sizes, size_t** output_sizes) {
    int size = 1024;
    size_t bytes = size * sizeof(float);

    // Allocate host input/output
    float* h_input = (float*)malloc(bytes);
    float* h_output = (float*)malloc(bytes);

    for (int i = 0; i < size; i++) {
        h_input[i] = (i % 2 == 0) ? -1.0f * i : (float)i;
    }

    // Assign to arrays
    h_inputs[0] = h_input;
    *num_inputs = 1;
    h_outputs[0] = h_output;
    *num_outputs = 1;

    *input_sizes = (size_t*)malloc(sizeof(size_t));
    *output_sizes = (size_t*)malloc(sizeof(size_t));
    (*input_sizes)[0] = bytes;
    (*output_sizes)[0] = bytes;
}

void print_output(void** h_outputs, int num_outputs, size_t* output_sizes) {
    float* h_output = (float*)h_outputs[0];
    int size = output_sizes[0] / sizeof(float);

    for (int i = 0; i < 10 && i < size; i++) {
        printf("ReLU h_output[%d] = %f\n", i, h_output[i]);
    }
}

void cleanup_host(void** h_inputs, int num_inputs,
                  void** h_outputs, int num_outputs) {
    for (int i = 0; i < num_inputs; i++) free(h_inputs[i]);
    for (int i = 0; i < num_outputs; i++) free(h_outputs[i]);
}

void launch_kernel(CUfunction kernel_func,
                   CUdeviceptr* d_inputs, int num_inputs,
                   CUdeviceptr* d_outputs, int num_outputs) {
    int size = 1024;
    int threads = 256;
    int blocks = (size + threads - 1) / threads;

    void* args[] = { &d_inputs[0], &d_outputs[0], &size };

    CHECK_CU(cuLaunchKernel(
        kernel_func,
        blocks, 1, 1,   // grid
        threads, 1, 1,  // block
        0,              // shared mem
        0,              // stream
        args,
        NULL
    ));
}
