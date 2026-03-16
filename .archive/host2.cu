// Declare the device function (matches PTX signature; no implementation needed)
extern "C" __device__ void _Z8fc_layerPfS_S_S_ii(
    float *input, float *weights, float *bias, float *output, int input_size, int output_size);

// Wrapper kernel to invoke the device function.
// Note: The wrapper must have a unique name to avoid name mangling collisions in the fatbin.
// If names collide, functions may be empty or missing after linking.
__global__ void fc_layer_wrapper(
    float *input, float *weights, float *bias, float *output, int input_size, int output_size) 
{
    // Device functions cannot be launched directly
    // Use tools like `nm` or `cuobjdump` to inspect symbol visibility in the fatbin.
    // https://stackoverflow.com/questions/11116722/how-can-i-call-a-ptx-function-from-cuda-c
    _Z8fc_layerPfS_S_S_ii(input, weights, bias, output, input_size, output_size);
}