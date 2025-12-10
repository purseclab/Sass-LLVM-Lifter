// simple_kernels.cu
#include <cuda_runtime.h>
#include <stdio.h>

////////////////////////////////////////////////////////////
// 1. Global memory kernel
////////////////////////////////////////////////////////////
__global__ void globalMemKernel(const int* a,
                                int* c,
                                int n) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < n) {
        // Operate on global memory
        c[idx] = a[idx] + 1;
    }
}

////////////////////////////////////////////////////////////
// 2. Shared memory kernel
////////////////////////////////////////////////////////////
// __global__ void sharedMemKernel(const int* in,
//                                 int* out,
//                                 int n) {
//     // for each block 
//     __shared__ int sdata[256];   // assume blockDim.x <= 256

//     int global_idx = blockIdx.x * blockDim.x + threadIdx.x;
//     int local_idx  = threadIdx.x;

//     if (global_idx < n) {
//         // global → shared
//         sdata[local_idx] = in[global_idx] + 1;
//     }

//     __syncthreads();

//     if (global_idx < n) {
//         // read from shared and write to global
//         out[global_idx] = sdata[local_idx];
//     }
// }

////////////////////////////////////////////////////////////
// 3. Local memory kernel
////////////////////////////////////////////////////////////
__global__ void localMemKernel(int* out,
                               int n) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx >= n) return;

    // local memory for each thread
    int tmp[2];

    tmp[0] = idx;
    tmp[1] = tmp[0] + 1;

    // write sum to global memory
    int sum = tmp[1];
    out[idx] = sum;
}


////////////////////////////////////////////////////////////
int main() {
    const int N = 1024;
    const int bytes = N * sizeof(int);

    int *h_a, *h_b, *h_c;
    cudaMallocHost(&h_a, bytes);
    cudaMallocHost(&h_b, bytes);
    cudaMallocHost(&h_c, bytes);

    for (int i = 0; i < N; ++i) {
        h_a[i] = 1 * i;
        h_b[i] = 2 * i;
    }

    int *d_a, *d_b;
    int *d_c;
    cudaMalloc(&d_a, bytes);
    cudaMalloc(&d_b, bytes);
    cudaMalloc(&d_c, bytes);

    cudaMemcpy(d_a, h_a, bytes, cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, h_b, bytes, cudaMemcpyHostToDevice);

    dim3 block(256);
    dim3 grid((N + block.x - 1) / block.x);

    // 1. global memory kernel
    globalMemKernel<<<grid, block>>>(d_a, d_c, N);

    // 2. shared memory kernel
    // sharedMemKernel<<<grid, block>>>(d_a, d_c, N);

    // 3. local memory kernel
    localMemKernel<<<grid, block>>>(d_c, N);

    cudaMemcpy(h_c, d_c, bytes, cudaMemcpyDeviceToHost);

    printf("h_c[0] = %d\n", h_c[0]);

    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c);
    cudaFreeHost(h_a);
    cudaFreeHost(h_b);
    cudaFreeHost(h_c);

    return 0;
}