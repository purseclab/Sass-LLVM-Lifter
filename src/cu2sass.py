"""
Script to compile CUDA files to executables, extract CUBINs, and disassemble them into SASS.
This setup is used to prepare the raw binary inputs required by the NVLift lifter.
"""
import subprocess
import os
import shutil
import json

from colorprint import *

from pathlib import Path


current_dir = Path(__file__).parent

def run_command(cmd):
    """
    Run shell command and check for errors.
    
    Args:
        cmd (list[str]): The command and its arguments as a list.
        
    Returns:
        str: The standard output of the command if successful.
    """
    print(f"Running: {' '.join(cmd)}")
    result = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if result.returncode != 0:
        print("Error running command:")
        print(result.stderr.decode())
        raise RuntimeError("Command failed.")
    return result.stdout.decode()

def compile_cuda(cuda_file, output_executable):
    """
    Compile a CUDA source file to an executable using nvcc.
    
    Note: Compiling with `-g -G` produces a single cubin (e.g., lstm.sm_75.cubin).
    Compiling without these flags may produce multiple cubins (e.g., lstm.1.sm_75.cubin).
    Ensure launch/config.json selects the correct target cubin explicitly.
    
    Args:
        cuda_file (Path|str): Path to the .cu file.
        output_executable (Path|str): Path for the generated target.
    """
    run_command([
        "nvcc", "-arch=sm_75", "-o", str(output_executable), str(cuda_file)
    ])

def extract_cubin(executable, cubin_pwd, cubin_prefix, cubin_name):
    """
    Extract cubin files from the compiled executable using cuobjdump.
    
    Args:
        executable (str): The name or path of the executable.
        cubin_pwd (str): Directory where the cubins should be searched.
        cubin_prefix (str): Prefix of the expected output cubins.
        cubin_name (str): Specific name of the cubin to select.
        
    Returns:
        str: Path to the selected .cubin file.
    """
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
    
    cubin_path = os.path.join(cubin_pwd, cubin_name)
    
    if not os.path.exists(cubin_path):
        raise FileNotFoundError("No .cubin file was generated.")
    return cubin_path

def disassemble_cubin(cubin_file, output_sass_file):
    """
    Disassemble a cubin file to SASS instructions using nvdisasm.
    
    Args:
        cubin_file (str): Path to the input .cubin file.
        output_sass_file (str): Path to write the designated .sass output.
    """
    output = run_command([
        "nvdisasm", "--print-code", str(cubin_file)
    ])
    with open(output_sass_file, "w") as f:
        f.write(output)

def main():
    """
    Main execution flow. Reads configuration from the launch configuration,
    compiles the target CUDA file, extracts the corresponding cubin, and outputs
    the disassembled SASS into the configured target destination.
    """
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
    
    output_executable = cuda_file.name.replace(".cu", "")
    
    output_dir = current_dir / "../output"
    
    output_sass = (output_dir / "1_sass" / data['lifter']['input_file']).resolve()
    
    output_cubin_prefix = output_executable
    output_cubin_name = data['cu2sass']['select_cubin']
    
    try:
        # Step 1: Compile CUDA code
        exec_and_cubin_path = (output_dir / "0_exec_and_cubin").resolve()
        output_executable_path = (exec_and_cubin_path / output_executable).resolve()
        
        # Clean destination folders of previously generated artifacts to prevent using stale
        # files if the config is invalid (facilitate fail-fast). (Since the presence of flags like -g -G can lead to 
        # different variations of intermediate files, it's safer to always test on fresh builds.)
        exec_and_cubin_path.mkdir(parents=True, exist_ok=True)
        # Purge existing artifacts matching the executable prefix to prevent stale builds.
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
        
        # When compiling with the `-g` flag, the path to the source file is embedded in the binary. 
        # Compiling via an absolute path creates an absolute reference to inside a docker container, 
        # which breaks later analysis on host. Thus, compile relatively to the project root.
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