// main.cu (generic driver with setup abstraction)
#include <cstdio>
#include <cstdlib>
#include <cuda.h>
#include <iostream>
#include <yaml-cpp/yaml.h>

#define CHECK_CU(err) do { \
    CUresult res = (err); \
    if (res != CUDA_SUCCESS) { \
        const char *msg; \
        cuGetErrorString(res, &msg); \
        fprintf(stderr, "CUDA Driver API error: %s\n", msg); \
        exit(1); \
    } \
} while(0)

// Unified interface that every setup.c must provide
extern "C" {
    // Allocates and prepares host inputs/outputs
    void prepare_input(void** h_inputs, int* num_inputs,
                       void** h_outputs, int* num_outputs,
                       size_t** input_sizes, size_t** output_sizes);

    // Prints a subset of output for debugging
    void print_output(void** h_outputs, int num_outputs, size_t* output_sizes);

    // Frees host memory
    void cleanup_host(void** h_inputs, int num_inputs,
                      void** h_outputs, int num_outputs);

    // Launches kernel with its own launch config
    void launch_kernel(CUfunction kernel_func,
                       CUdeviceptr* d_inputs, int num_inputs,
                       CUdeviceptr* d_outputs, int num_outputs);
}

int main() {
    // Load config from YAML
    std::string config_file = "config.yaml";
    YAML::Node config;
    try {
        config = YAML::LoadFile(config_file);
    } catch (const std::exception& e) {
        std::cerr << "Error loading YAML config: " << e.what() << std::endl;
        return 1;
    }

    std::string ptx_file;
    std::string kernel_name;
    try {
        ptx_file = "/ptx/" + config["ptx_file"].as<std::string>();
        kernel_name = config["kernel_name"].as<std::string>();
    } catch (const std::exception& e) {
        std::cerr << "Error parsing YAML config keys: " << e.what() << std::endl;
        return 1;
    }

    // Host buffers (abstracted arrays of pointers + sizes)
    void* h_inputs[8];   int num_inputs = 0;   size_t* input_sizes = nullptr;
    void* h_outputs[8];  int num_outputs = 0;  size_t* output_sizes = nullptr;

    // Prepare input/output (kernel-specific implementation)
    prepare_input(h_inputs, &num_inputs,
                  h_outputs, &num_outputs,
                  &input_sizes, &output_sizes);

    // Initialize CUDA driver
    CHECK_CU(cuInit(0));
    CUdevice dev;
    CHECK_CU(cuDeviceGet(&dev, 0));
    CUcontext ctx;
    CHECK_CU(cuCtxCreate(&ctx, 0, dev));

    // Load PTX module and kernel
    CUmodule module;
    CHECK_CU(cuModuleLoad(&module, ptx_file.c_str()));
    CUfunction kernel_func;
    CHECK_CU(cuModuleGetFunction(&kernel_func, module, kernel_name.c_str()));

    // Allocate device memory for all inputs/outputs
    CUdeviceptr d_inputs[8];
    CUdeviceptr d_outputs[8];
    for (int i = 0; i < num_inputs; i++) {
        CHECK_CU(cuMemAlloc(&d_inputs[i], input_sizes[i]));
        CHECK_CU(cuMemcpyHtoD(d_inputs[i], h_inputs[i], input_sizes[i]));
    }
    for (int i = 0; i < num_outputs; i++) {
        CHECK_CU(cuMemAlloc(&d_outputs[i], output_sizes[i]));
    }

    // Launch kernel (delegated to setup)
    launch_kernel(kernel_func, d_inputs, num_inputs, d_outputs, num_outputs);
    CHECK_CU(cuCtxSynchronize());

    // Copy results back
    for (int i = 0; i < num_outputs; i++) {
        CHECK_CU(cuMemcpyDtoH(h_outputs[i], d_outputs[i], output_sizes[i]));
    }

    // Print kernel-specific output
    print_output(h_outputs, num_outputs, output_sizes);

    // Free device memory
    for (int i = 0; i < num_inputs; i++) CHECK_CU(cuMemFree(d_inputs[i]));
    for (int i = 0; i < num_outputs; i++) CHECK_CU(cuMemFree(d_outputs[i]));

    CHECK_CU(cuModuleUnload(module));
    CHECK_CU(cuCtxDestroy(ctx));

    // Free host memory
    cleanup_host(h_inputs, num_inputs, h_outputs, num_outputs);

    return 0;
}
