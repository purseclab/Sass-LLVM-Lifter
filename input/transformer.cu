// transformer_example.cu
// Minimal CUDA implementation of a single-head self-attention + tiny FFN.
// Very naive, not optimized. Only to show correct logic of a Transformer block core.

#include <cstdio>
#include <cmath>
#include <cuda_runtime.h>

#define CUDA_CHECK(call)                                                    \
    do {                                                                    \
        cudaError_t err = (call);                                           \
        if (err != cudaSuccess) {                                           \
            fprintf(stderr, "CUDA error at %s:%d: %s\n",                    \
                    __FILE__, __LINE__, cudaGetErrorString(err));           \
            std::exit(EXIT_FAILURE);                                        \
        }                                                                   \
    } while (0)

// Linear projection: Y = X * W^T + b
// X: [seq_len, d_model], W: [d_k, d_model] (so that W^T is [d_model, d_k])
// Y: [seq_len, d_k]
__global__ void linear_proj_kernel(
    const float* __restrict__ X,
    const float* __restrict__ W,
    const float* __restrict__ b,
    float* __restrict__ Y,
    int seq_len,
    int d_model,
    int d_k
) {
    int t = blockIdx.y * blockDim.y + threadIdx.y; // time index
    int d = blockIdx.x * blockDim.x + threadIdx.x; // feature index

    if (t >= seq_len || d >= d_k) return;

    float sum = b[d];
    // W is stored as [d_k, d_model], but we want X[t] * W^T[:, d]
    for (int i = 0; i < d_model; ++i) {
        float x = X[t * d_model + i];
        float w = W[d * d_model + i];
        sum += x * w;
    }
    Y[t * d_k + d] = sum;
}

// Single-head scaled dot-product attention.
// Q, K, V: [seq_len, d_k]
// Output: [seq_len, d_k]
// Each query position t is handled by one thread (very naive).
// __global__ void attention_forward_kernel(
//     const float* __restrict__ Q,
//     const float* __restrict__ K,
//     const float* __restrict__ V,
//     float* __restrict__ Out,
//     int seq_len,
//     int d_k
// ) {
//     int t = blockIdx.x * blockDim.x + threadIdx.x; // query index
//     if (t >= seq_len) return;

//     float inv_sqrt_dk = rsqrtf((float)d_k);

//     // 1) Find max score for numerical stability
//     float max_score = -1e30f;
//     for (int s = 0; s < seq_len; ++s) {
//         float dot = 0.f;
//         for (int d = 0; d < d_k; ++d) {
//             float q = Q[t * d_k + d];
//             float k = K[s * d_k + d];
//             dot += q * k;
//         }
//         float score = dot * inv_sqrt_dk;
//         if (score > max_score) max_score = score;
//     }

//     // 2) Compute denominator of softmax
//     float sum_exp = 0.f;
//     for (int s = 0; s < seq_len; ++s) {
//         float dot = 0.f;
//         for (int d = 0; d < d_k; ++d) {
//             float q = Q[t * d_k + d];
//             float k = K[s * d_k + d];
//             dot += q * k;
//         }
//         float score = dot * inv_sqrt_dk;
//         sum_exp += expf(score - max_score);
//     }

//     // 3) Weighted sum of V
//     for (int d = 0; d < d_k; ++d) {
//         Out[t * d_k + d] = 0.f;
//     }

//     for (int s = 0; s < seq_len; ++s) {
//         float dot = 0.f;
//         for (int d = 0; d < d_k; ++d) {
//             float q = Q[t * d_k + d];
//             float k = K[s * d_k + d];
//             dot += q * k;
//         }
//         float score = dot * inv_sqrt_dk;
//         float weight = expf(score - max_score) / sum_exp;

//         for (int d = 0; d < d_k; ++d) {
//             Out[t * d_k + d] += weight * V[s * d_k + d];
//         }
//     }
// }

// Tiny feed-forward: Y = ReLU(X * W1^T + b1)
// X: [seq_len, d_model], W1: [d_ff, d_model], b1: [d_ff]
// Y: [seq_len, d_ff]
__global__ void ffn_relu_kernel(
    const float* __restrict__ X,
    const float* __restrict__ W1,
    const float* __restrict__ b1,
    float* __restrict__ Y,
    int seq_len,
    int d_model,
    int d_ff
) {
    int t = blockIdx.y * blockDim.y + threadIdx.y;
    int d = blockIdx.x * blockDim.x + threadIdx.x;

    if (t >= seq_len || d >= d_ff) return;

    float sum = b1[d];
    for (int i = 0; i < d_model; ++i) {
        float x = X[t * d_model + i];
        float w = W1[d * d_model + i];
        sum += x * w;
    }
    // ReLU
    if (sum < 0.f) sum = 0.f;
    Y[t * d_ff + d] = sum;
}

int main() {
    const int seq_len  = 4;
    const int d_model  = 8;
    const int d_k      = 8;   // single head, same as d_model for simplicity
    const int d_ff     = 16;  // FFN hidden dim

    size_t x_bytes   = seq_len * d_model * sizeof(float);
    size_t qkv_bytes = seq_len * d_k * sizeof(float);
    size_t W_bytes   = d_k * d_model * sizeof(float);
    size_t b_qkv     = d_k * sizeof(float);
    size_t ffn_W     = d_ff * d_model * sizeof(float);
    size_t ffn_b     = d_ff * sizeof(float);
    size_t ffn_out   = seq_len * d_ff * sizeof(float);

    // Host buffers
    float h_x[seq_len * d_model];
    float h_Wq[d_k * d_model], h_Wk[d_k * d_model], h_Wv[d_k * d_model];
    float h_bq[d_k], h_bk[d_k], h_bv[d_k];
    float h_Q[qkv_bytes / sizeof(float)];
    float h_K[qkv_bytes / sizeof(float)];
    float h_V[qkv_bytes / sizeof(float)];
    float h_attn_out[qkv_bytes / sizeof(float)];
    float h_W1[ffn_W / sizeof(float)];
    float h_b1[d_ff];
    float h_ffn_out[ffn_out / sizeof(float)];

    // Initialize input and weights with small deterministic values
    for (int i = 0; i < seq_len * d_model; ++i)
        h_x[i] = 0.1f * (i + 1);

    for (int i = 0; i < d_k * d_model; ++i) {
        h_Wq[i] = 0.02f * ((i % 5) - 2);
        h_Wk[i] = 0.03f * ((i % 7) - 3);
        h_Wv[i] = 0.04f * ((i % 3) - 1);
    }
    for (int i = 0; i < d_k; ++i) {
        h_bq[i] = 0.0f;
        h_bk[i] = 0.0f;
        h_bv[i] = 0.0f;
    }

    for (int i = 0; i < d_ff * d_model; ++i)
        h_W1[i] = 0.01f * ((i % 5) - 2);
    for (int i = 0; i < d_ff; ++i)
        h_b1[i] = 0.0f;

    // Device buffers
    float *d_x, *d_Wq, *d_Wk, *d_Wv, *d_bq, *d_bk, *d_bv;
    float *d_Q, *d_K, *d_V, *d_attn_out;
    float *d_W1, *d_b1, *d_ffn_out;

    CUDA_CHECK(cudaMalloc(&d_x, x_bytes));
    CUDA_CHECK(cudaMalloc(&d_Wq, W_bytes));
    CUDA_CHECK(cudaMalloc(&d_Wk, W_bytes));
    CUDA_CHECK(cudaMalloc(&d_Wv, W_bytes));
    CUDA_CHECK(cudaMalloc(&d_bq, b_qkv));
    CUDA_CHECK(cudaMalloc(&d_bk, b_qkv));
    CUDA_CHECK(cudaMalloc(&d_bv, b_qkv));
    CUDA_CHECK(cudaMalloc(&d_Q, qkv_bytes));
    CUDA_CHECK(cudaMalloc(&d_K, qkv_bytes));
    CUDA_CHECK(cudaMalloc(&d_V, qkv_bytes));
    CUDA_CHECK(cudaMalloc(&d_attn_out, qkv_bytes));
    CUDA_CHECK(cudaMalloc(&d_W1, ffn_W));
    CUDA_CHECK(cudaMalloc(&d_b1, ffn_b));
    CUDA_CHECK(cudaMalloc(&d_ffn_out, ffn_out));

    CUDA_CHECK(cudaMemcpy(d_x, h_x, x_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_Wq, h_Wq, W_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_Wk, h_Wk, W_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_Wv, h_Wv, W_bytes, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_bq, h_bq, b_qkv, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_bk, h_bk, b_qkv, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_bv, h_bv, b_qkv, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_W1, h_W1, ffn_W, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(d_b1, h_b1, ffn_b, cudaMemcpyHostToDevice));

    // Launch linear projections for Q, K, V
    dim3 blockDim_lin(16, 4);
    dim3 gridDim_lin((d_k + blockDim_lin.x - 1) / blockDim_lin.x,
                     (seq_len + blockDim_lin.y - 1) / blockDim_lin.y);

    linear_proj_kernel<<<gridDim_lin, blockDim_lin>>>(
        d_x, d_Wq, d_bq, d_Q, seq_len, d_model, d_k);
    linear_proj_kernel<<<gridDim_lin, blockDim_lin>>>(
        d_x, d_Wk, d_bk, d_K, seq_len, d_model, d_k);
    linear_proj_kernel<<<gridDim_lin, blockDim_lin>>>(
        d_x, d_Wv, d_bv, d_V, seq_len, d_model, d_k);
    CUDA_CHECK(cudaDeviceSynchronize());

    // Attention
    // dim3 blockDim_attn(128);
    // dim3 gridDim_attn((seq_len + blockDim_attn.x - 1) / blockDim_attn.x);

    // attention_forward_kernel<<<gridDim_attn, blockDim_attn>>>(
    //     d_Q, d_K, d_V, d_attn_out, seq_len, d_k);
    // CUDA_CHECK(cudaDeviceSynchronize());

    // FFN on top of attention output (using same d_k as d_model)
    dim3 blockDim_ffn(16, 4);
    dim3 gridDim_ffn((d_ff + blockDim_ffn.x - 1) / blockDim_ffn.x,
                     (seq_len + blockDim_ffn.y - 1) / blockDim_ffn.y);

    ffn_relu_kernel<<<gridDim_ffn, blockDim_ffn>>>(
        d_attn_out, d_W1, d_b1, d_ffn_out,
        seq_len, d_k, d_ff);
    CUDA_CHECK(cudaDeviceSynchronize());

    CUDA_CHECK(cudaMemcpy(h_Q, d_Q, qkv_bytes, cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(h_K, d_K, qkv_bytes, cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(h_V, d_V, qkv_bytes, cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(h_attn_out, d_attn_out, qkv_bytes, cudaMemcpyDeviceToHost));
    CUDA_CHECK(cudaMemcpy(h_ffn_out, d_ffn_out, ffn_out, cudaMemcpyDeviceToHost));

    printf("Transformer self-attention output (first token):\n");
    for (int d = 0; d < d_k; ++d) {
        printf(" % .5f", h_attn_out[0 * d_k + d]);
    }
    printf("\n");

    printf("Transformer FFN output (first token):\n");
    for (int d = 0; d < d_ff; ++d) {
        printf(" % .5f", h_ffn_out[0 * d_ff + d]);
    }
    printf("\n");

    cudaFree(d_x);
    cudaFree(d_Wq);
    cudaFree(d_Wk);
    cudaFree(d_Wv);
    cudaFree(d_bq);
    cudaFree(d_bk);
    cudaFree(d_bv);
    cudaFree(d_Q);
    cudaFree(d_K);
    cudaFree(d_V);
    cudaFree(d_attn_out);
    cudaFree(d_W1);
    cudaFree(d_b1);
    cudaFree(d_ffn_out);

    return 0;
}