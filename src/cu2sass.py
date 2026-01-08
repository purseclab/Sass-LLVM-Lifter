import subprocess
import os
import shutil
import json

from colorprint import *

from pathlib import Path


current_dir = Path(__file__).parent

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
    # Note that compiling with -g -G appears to produce a single cubin, e.g. lstm.sm_75.cubin, while compiling without -g -G produces two cubin, e.g. lstm.1.sm_75.cubin and lstm.2.sm_75.cubin.
    # This is a somewhat important implication since the launch/config.json has a setting on the cubin it uses
    
    # run_command([
    #     "nvcc", "-g" , "-G", "-arch=sm_75", "-o", str(output_executable), str(cuda_file)
    # ])
    run_command([
        "nvcc", "-arch=sm_75", "-o", str(output_executable), str(cuda_file)
    ])

def extract_cubin(executable, cubin_pwd, cubin_prefix, cubin_name):
    """Extract cubin files using cuobjdump"""
    
    original_dir = os.getcwd()
    os.chdir(cubin_pwd)
    run_command([
        "cuobjdump", "-xelf", "all", str(executable)
    ])
    os.chdir(original_dir)

    # Find the generated .cubin file
    
    cubin_files = [f for f in os.listdir(cubin_pwd) if f.startswith(cubin_prefix) and f.endswith('.cubin')]
    if len(cubin_files) != 2:
        warning(f"Number of cubin files with prefix \"{cubin_prefix}\" is {len(cubin_files)} (!= 2)")
    
    cubin_path = os.path.join(cubin_pwd, cubin_name) # path.join can also join Path objects
    
    if not os.path.exists(cubin_path):
        raise FileNotFoundError("No .cubin file was generated.")
    return cubin_path

def disassemble_cubin(cubin_file, output_sass_file):
    """Disassemble cubin file to SASS using nvdisasm"""
    output = run_command([
        "nvdisasm", "--print-code", str(cubin_file)
    ])
    with open(output_sass_file, "w") as f:
        f.write(output)

def main():
    project_root = (current_dir / "..").resolve()
    
    config_folder_name = os.environ.get('PARENT_FOLDER_NAME', 'launch')
    config_path = current_dir / ".." / config_folder_name / "config.json"
    
    with open(config_path.resolve(), 'r') as file:
        data = json.load(file)
    
    cuda_file = (current_dir / "../input/" / data['cu2sass']['cuda_file']).resolve()
    
    if cuda_file.suffix != ".cu":
        error(f"Please provide a cuda file ending with \".cu\". Current file: {cuda_file}")
        exit(1)

    if not os.path.exists(cuda_file):
        error(f"Input file ({cuda_file}) does not exist.")
        exit(1)
    
    # output_executable = cuda_file.split("/")[-1].replace(".cu", "")
    
    output_executable = cuda_file.name.replace(".cu", "") # type str, but .resolve() are still Path objects
    
    output_dir = current_dir / "../output"
    
    output_sass = (output_dir / "1_sass" / data['lifter']['input_file']).resolve()
    
    output_cubin_prefix = output_executable
    output_cubin_name = data['cu2sass']['select_cubin']
    
    try:
        # Step 1: Compile CUDA code
        exec_and_cubin_path = (output_dir / "0_exec_and_cubin").resolve()
        output_executable_path = (exec_and_cubin_path / output_executable).resolve()
        
        # Clean destination folders of any previously generated artifacts so that we don't accidentally use stale files when config is wrong (i.e. we'll let the lifter fail); because the presence of -g -G causes different combination of files to be generated, which needs to update the config.json accordingly, and we dont want to accidentally reused them
        exec_and_cubin_path.mkdir(parents=True, exist_ok=True)
        # Remove any existing cubin files that match the executable prefix
        for p in exec_and_cubin_path.glob(f"{output_executable}*.cubin"):
            try:
                p.unlink()
                print(f"Removed old cubin: {p}")
            except Exception as e:
                print(f"Warning: failed to remove old cubin {p}: {e}")

        # Also remove previously generated disassembly (SASS) if present
        try:
            if output_sass.exists():
                output_sass.unlink()
                print(f"Removed old SASS file: {output_sass}")
        except Exception as e:
            print(f"Warning: failed to remove old SASS {output_sass}: {e}")

        original_dir = os.getcwd()
        os.chdir(project_root)
        # when compiling with -g flag, the compiler will embed path to your source file in the binary. if you provide absolute path to nvcc, this will be stored as absolute path, and since we compiled in docker container and running in host computer, this is problematic, so we compile in relative path relative to project root
        # make sure that you have called .resolve on project_root, because otherwise it'll be like this "/app/src/..", and when you call .relative_to below, it'll say that cuda_file is not a descendant of project root
        compile_cuda(cuda_file.relative_to(project_root), output_executable_path.relative_to(project_root))
        os.chdir(original_dir)    

        # Step 2: Extract .cubin files
        cubin_files = extract_cubin(output_executable, exec_and_cubin_path, output_cubin_prefix, output_cubin_name)
        print("Found cubin file:", cubin_files)

        # Step 3: Disassemble each .cubin file (choose first one by default)
        if cubin_files:
            disassemble_cubin(cubin_files, output_sass)
            print(f"Disassembly saved to {output_sass}")

    except Exception as e:
        print("Error:", str(e))
        exit(1)

if __name__ == "__main__":
    main()