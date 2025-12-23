// Declare the kernel (matches PTX signature; no implementation needed)
extern "C" __device__ void _Z8fc_layerPfS_S_S_ii(float *input, float *weights, float *bias, float *output, int input_size, int output_size);


// need to be of a different name, otherwise theyll get mangled into the same name inside the fatbin and produce empty functions
__global__ void fc_layer_wrapper(float *input, float *weights, float *bias, float *output, int input_size, int output_size) {
    // this is needed because you cant call a device code straight away
    // also, if you do nm -a ../src/kernel.fatbin.o, you'll notice that the function names are not there, meaning that nvlink will for sure fail to link because they're not discoverable.
    // interestingly, when you change from .entry to .func, you can find the name of the function inside the fatbin, otherwise it wont be there. note that we can use cuobjdump to examine the fatbin/cubin i think.

    // https://stackoverflow.com/questions/11116722/how-can-i-call-a-ptx-function-from-cuda-c
    _Z8fc_layerPfS_S_S_ii(input, weights, bias, output, input_size, output_size);
}