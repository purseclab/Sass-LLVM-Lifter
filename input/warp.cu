#include <cuda_runtime.h>
#include <stdio.h>


__global__ void warpDivergenceKernel(int *data, int threshold) {
    int idx = threadIdx.x + blockDim.x * blockIdx.x;
    int val = data[idx];

    if (val < threshold) {
        if (val % 2 == 0) {
            val *= 28;
        } else {
            val /= 35;
        }
    } else {
        if (val % 3 == 0) {
            val *= 26;
        } else {
            val /= 25;
        }
    }

    data[idx] = val;
}



int main() {
    const int arraySize = 32;
    const int arrayBytes = arraySize * sizeof(int);

    int hostData[arraySize];
    for (int i = 0; i < arraySize; i++) {
        hostData[i] = i;
    }

    int *deviceData;
    cudaMalloc((void**)&deviceData, arrayBytes);
    cudaMemcpy(deviceData, hostData, arrayBytes, cudaMemcpyHostToDevice);

    warpDivergenceKernel<<<1, arraySize>>>(deviceData, 10);
    cudaError_t err = cudaGetLastError();
    if (err != cudaSuccess)
    {
        printf("Error: %s\n", cudaGetErrorString(err));
    }

    cudaMemcpy(hostData, deviceData, arrayBytes, cudaMemcpyDeviceToHost);

    for (int i = 0; i < arraySize; i++) {
        printf("%d ", hostData[i]);
    }
    printf("\n");

    cudaFree(deviceData);
    return 0;
}