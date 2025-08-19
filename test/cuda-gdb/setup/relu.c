// relu_setup.c (example input/setup file for the ReLU test)
#include <stdlib.h>
#include <stdio.h>

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