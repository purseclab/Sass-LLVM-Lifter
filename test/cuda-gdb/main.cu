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

// Declarations for external functions from the setup C file
extern "C" {
    void prepare_input(float** h_input, float** h_output, int* size, size_t* bytes);
    void print_output(float* h_output, int size);
    void cleanup_host(float* h_input, float* h_output);
    void launch_kernel(CUfunction kernel_func, CUdeviceptr d_input, CUdeviceptr d_output, int size);
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

    // Prepare host input/output using the linked setup function
    float *h_input, *h_output;
    int size;
    size_t bytes;
    prepare_input(&h_input, &h_output, &size, &bytes);

    // Initialize CUDA driver
    CHECK_CU(cuInit(0));

    CUdevice dev;
    CHECK_CU(cuDeviceGet(&dev, 0));

    CUcontext ctx;
    CHECK_CU(cuCtxCreate(&ctx, 0, dev));

    // Load PTX module from config
    CUmodule module;
    CHECK_CU(cuModuleLoad(&module, ptx_file.c_str()));

    // Get kernel function handle from config
    CUfunction kernel_func;
    CHECK_CU(cuModuleGetFunction(&kernel_func, module, kernel_name.c_str()));

    // Allocate device memory
    CUdeviceptr d_input, d_output;
    CHECK_CU(cuMemAlloc(&d_input, bytes));
    CHECK_CU(cuMemAlloc(&d_output, bytes));

    // Copy input to device
    CHECK_CU(cuMemcpyHtoD(d_input, h_input, bytes));

    // Launch kernel using the setup function
    launch_kernel(kernel_func, d_input, d_output, size);

    // Wait for kernel to finish
    CHECK_CU(cuCtxSynchronize());

    // Copy result back
    CHECK_CU(cuMemcpyDtoH(h_output, d_output, bytes));

    // Print output using the linked setup function
    print_output(h_output, size);

    // Cleanup device
    CHECK_CU(cuMemFree(d_input));
    CHECK_CU(cuMemFree(d_output));
    CHECK_CU(cuModuleUnload(module));
    CHECK_CU(cuCtxDestroy(ctx));

    // Cleanup host using the linked setup function
    cleanup_host(h_input, h_output);

    return 0;
}