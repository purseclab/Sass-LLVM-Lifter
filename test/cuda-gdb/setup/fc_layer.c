#include <stdlib.h>
#include <stdio.h>
#include <cuda.h>

#define INPUT_SIZE 8
#define OUTPUT_SIZE 1
#define THREADS 1 // number of threads needed is dependent on the output_size. Every thread will go through each element in the input

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
    int input_size = INPUT_SIZE;
    int output_size = OUTPUT_SIZE;

    size_t input_bytes   = input_size * sizeof(float);
    size_t weight_bytes  = input_size * output_size * sizeof(float);
    size_t bias_bytes    = output_size * sizeof(float);
    size_t output_bytes  = output_size * sizeof(float);

    float* h_input   = (float*)malloc(input_bytes);
    float* h_weights = (float*)malloc(weight_bytes);
    float* h_bias    = (float*)malloc(bias_bytes);
    float* h_output  = (float*)malloc(output_bytes);

    // Initialize input
    for (int i = 0; i < input_size; i++) h_input[i] = (float)(i + 1);

    // Initialize weights (row-major: output × input)
    for (int i = 0; i < output_size * input_size; i++)
        h_weights[i] = 0.01f * (float)(i + 1);

    // Initialize biases
    for (int i = 0; i < output_size; i++) h_bias[i] = 1.0f;

    // Zero output
    for (int i = 0; i < output_size; i++) h_output[i] = 0.0f;

    // Assign
    h_inputs[0] = h_input;
    h_inputs[1] = h_weights;
    h_inputs[2] = h_bias;
    *num_inputs = 3;

    h_outputs[0] = h_output;
    *num_outputs = 1;

    *input_sizes = (size_t*)malloc(3 * sizeof(size_t));
    *output_sizes = (size_t*)malloc(1 * sizeof(size_t));

    (*input_sizes)[0] = input_bytes;
    (*input_sizes)[1] = weight_bytes;
    (*input_sizes)[2] = bias_bytes;
    (*output_sizes)[0] = output_bytes;
}

void print_output(void** h_outputs, int num_outputs, size_t* output_sizes) {
    float* h_output = (float*)h_outputs[0];
    int size = output_sizes[0] / sizeof(float);

    for (int i = 0; i < size; i++) {
        printf("FC h_output[%d] = %f\n", i, h_output[i]);
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
    int input_size = INPUT_SIZE;
    int output_size = OUTPUT_SIZE;

    int threads = THREADS;
    int blocks = (output_size + threads - 1) / threads;

    void* args[] = {
        &d_inputs[0],   // input
        &d_inputs[1],   // weights
        &d_inputs[2],   // bias
        &d_outputs[0],  // output
        &input_size,
        &output_size
    };

    CHECK_CU(cuLaunchKernel(
        kernel_func,
        blocks, 1, 1,   // grid
        threads, 1, 1,  // block
        0,
        0,
        args,
        NULL
    ));
}
