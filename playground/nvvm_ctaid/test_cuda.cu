#include <cuda.h>
#include <iostream>
#include <cstdlib>

#define CUDA_CHECK(call) \
    do { \
        CUresult err = call; \
        if (err != CUDA_SUCCESS) { \
            const char* errStr; \
            cuGetErrorString(err, &errStr); \
            std::cerr << "CUDA error: " << errStr << " at " << __FILE__ << ":" << __LINE__ << std::endl; \
            exit(EXIT_FAILURE); \
        } \
    } while (0)

int main() {
    // Initialize CUDA
    CUDA_CHECK(cuInit(0));

    // Get device
    CUdevice device;
    CUDA_CHECK(cuDeviceGet(&device, 0));

    // Create context
    CUcontext context;
    CUDA_CHECK(cuCtxCreate(&context, 0, device));

    // Load the PTX module from file
    CUmodule module;
    CUDA_CHECK(cuModuleLoad(&module, "kernel.ptx"));

    // Get the kernel function
    CUfunction kernel;
    CUDA_CHECK(cuModuleGetFunction(&kernel, module, "my_kernel"));

    // Launch the kernel
    void* args[] = {};
    int blockSize = 256;
    int numBlocks = 1;
    CUDA_CHECK(cuLaunchKernel(kernel, numBlocks, 1, 1, blockSize, 1, 1, 0, NULL, args, NULL));

    // Synchronize
    CUDA_CHECK(cuCtxSynchronize());

    // Read the global variable cta_id_x
    CUdeviceptr cta_id_x_ptr;
    size_t size;
    CUDA_CHECK(cuModuleGetGlobal(&cta_id_x_ptr, &size, module, "cta_id_x"));
    int cta_id_x_value;
    CUDA_CHECK(cuMemcpyDtoH(&cta_id_x_value, cta_id_x_ptr, sizeof(int)));

    // Print the value
    std::cout << "CTA ID X: " << cta_id_x_value << std::endl;

    // Clean up
    CUDA_CHECK(cuModuleUnload(module));
    CUDA_CHECK(cuCtxDestroy(context));
    return 0;
}