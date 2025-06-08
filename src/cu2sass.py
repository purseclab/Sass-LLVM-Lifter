import subprocess
import os
import shutil
import json

from colorprint import *

def run_command(cmd):
    """Run shell command and check for errors."""
    print(f"Running: {' '.join(cmd)}")
    result = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if result.returncode != 0:
        print("Error running command:")
        print(result.stderr.decode())
        raise RuntimeError("Command failed.")
    return result.stdout.decode()

def compile_cuda(cuda_file, output_executable):
    """Compile CUDA file to executable using nvcc"""
    run_command([
        "nvcc", "-arch=sm_75", "-o", output_executable, cuda_file
    ])

def extract_cubin(executable, cubin_pwd, cubin_prefix, cubin_name):
    """Extract cubin files using cuobjdump"""
    run_command([
        "cuobjdump", "-xelf", "all", executable
    ])

    # Find the generated .cubin file
    
    cubin_files = [f for f in os.listdir(cubin_pwd) if f.startswith(cubin_prefix) and f.endswith('.cubin')]
    if len(cubin_files) != 2:
        warning(f"Number of cubin files with prefix \"{cubin_prefix}\" is {len(cubin_files)} (!= 2)")
    
    cubin_path = os.path.join(cubin_pwd, cubin_name)
    if not os.path.exists(cubin_path):
        raise FileNotFoundError("No .cubin file was generated.")
    return cubin_path

def disassemble_cubin(cubin_file, output_sass_file):
    """Disassemble cubin file to SASS using nvdisasm"""
    output = run_command([
        "nvdisasm", "--print-code", cubin_file
    ])
    with open(output_sass_file, "w") as f:
        f.write(output)

def main():
    with open('../launch/config.json', 'r') as file:
        data = json.load(file)
    
    cuda_file = "../input/" + data['cu2sass']['cuda_file']
    
    if not cuda_file.endswith(".cu"):
        error(f"Please provide a cuda file ending with \".cu\". Current file: {cuda_file}")
        exit(1)

    output_executable = cuda_file.split("/")[-1].replace(".cu", "")
    
    output_sass = os.path.join("../output/1_sass", output_executable + ".sass")
    output_cubin_prefix = output_executable
    output_cubin_name = data['cu2sass']['select_cubin']
    
    try:
        # Step 1: Compile CUDA code
        output_executable_path = "../output/0_exec_and_cubin/" + output_executable
        compile_cuda(cuda_file, output_executable_path)

        # Step 2: Extract .cubin files
        cubin_files = extract_cubin(output_executable_path, "../output/0_exec_and_cubin/", output_cubin_prefix, output_cubin_name)
        print("Found cubin file:", cubin_files)

        # Step 3: Disassemble each .cubin file (choose first one by default)
        if cubin_files:
            disassemble_cubin(cubin_files, output_sass)
            print(f"Disassembly saved to {output_sass}")

    except Exception as e:
        print("Error:", str(e))

if __name__ == "__main__":
    main()