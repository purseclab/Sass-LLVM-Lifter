#include <cuda.h>
#include <iostream>

int main() {
    // Load the PTX module
    CUmodule module;
    cuInit(0);
    CUdevice device;
    cuDeviceGet(&device, 0);
    CUcontext context;
    cuCtxCreate(&context, 0, device);
    cuModuleLoadDataEx(&module, (const void*)"kernel.ptx", 0, 0, 0);

    // Get the kernel function
    CUfunction kernel;
    cuModuleGetFunction(&kernel, module, "my_kernel");

    // Launch the kernel
    void* args[] = {};
    int blockSize = 256;
    int numBlocks = 1;
    cuLaunchKernel(kernel, numBlocks, 1, 1, blockSize, 1, 1, 0, NULL, args, NULL);

    // Synchronize
    cuCtxSynchronize();

    // Read the global variable cta_id_x
    CUdeviceptr cta_id_x_ptr;
    size_t size;
    cuModuleGetGlobal(&cta_id_x_ptr, &size, module, "cta_id_x");
    int cta_id_x_value;
    cuMemcpyDtoH(&cta_id_x_value, cta_id_x_ptr, sizeof(int));

    // Print the value
    std::cout << "CTA ID X: " << cta_id_x_value << std::endl;

    // Clean up
    cuModuleUnload(module);
    cuCtxDestroy(context);
    return 0;
}
