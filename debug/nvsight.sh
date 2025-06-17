#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $SCRIPT_DIR

DOCKER_CONTAINER_NAME="my-nvsight-gui"
DOCKER_IMAGE_NAME="nvsight-gui:latest"
DOCKERFILE_PATH="Dockerfile.nvsight"

SSH_CONFIG=~/.ssh/config
SSH_PRIVATE_KEY="$SCRIPT_DIR/id_rsa"
HOST_ENTRY="docker_nvsight"

LOCAL_PORT=5901


# Generate SSH keys if they do not exist
if [ ! -f "$SCRIPT_DIR/id_rsa" ]; then
    # check if .pub file exists, if it does then remove the file
    if [ -f "$SCRIPT_DIR/id_rsa.pub" ]; then
        rm "$SCRIPT_DIR/id_rsa.pub"
    fi
    ssh-keygen -t rsa -b 4096 -f "$SCRIPT_DIR/id_rsa" -N ""
    echo "SSH keys generated at $SCRIPT_DIR/id_rsa and $SCRIPT_DIR/id_rsa.pub"
else
    echo "SSH keys already exist at $SCRIPT_DIR/id_rsa and $SCRIPT_DIR/id_rsa.pub"
fi

# check if .ssh directory exists, if not then create it
if [ ! -d "$HOME/.ssh" ]; then
    mkdir -p "$HOME/.ssh"
    chmod 700 "$HOME/.ssh"
fi

# Check if Host entry already exists in config
if ! grep -q "Host $HOST_ENTRY" "$SSH_CONFIG"; then
    echo "Adding SSH config for $HOST_ENTRY..."
    cat <<EOL >> "$SSH_CONFIG"

Host $HOST_ENTRY
    HostName localhost
    Port 2222
    User dockeruser
    IdentityFile $SSH_PRIVATE_KEY

EOL
else
    echo "SSH config for $HOST_ENTRY already exists."
fi
# Check if tunnel is already running
PID=$(pgrep -f "ssh.*${LOCAL_PORT}" || echo "") # use || echo to avoid error if no PID found

if [ -n "${PID}" ]; then
  # PID not empty
  echo "SSH tunnel already running (PID: ${PID}). Killing it..."
  ./stop-vnc-tunnel.sh
fi


# Install nvidia-container-toolkit if on Ubuntu so that the container can access the GPU
# necessary, otherwise when you do docker run with --gpus all, it will fail with:
# "docker: Error response from daemon: could not select device driver "" with capabilities: [[gpu]]".
# Detect OS
OS="$(uname -s)"


USE_GPU=false
case "$OS" in
    Linux*)
        echo "✅ Running on Linux"

        # Check for Debian/Ubuntu using os-release if it exists
        if [ -f /etc/os-release ]; then
            . /etc/os-release
            if [[ "$ID" == "debian" || "$ID" == "ubuntu" || "$ID_LIKE" == *"debian"* ]]; then
                echo "🎯 Debian-based OS detected: $NAME"

                # Check if nvidia-ctk is available
                if command -v nvidia-ctk &> /dev/null; then
                    echo "✅ NVIDIA Container Toolkit already installed."
                    USE_GPU=true
                else
                    echo "🔄 Installing NVIDIA Container Toolkit..."
                    # https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html

                    # Add repo
                    curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
                    && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
                        sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
                        sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

                    # Update and install
                    sudo apt-get update || true
                    export NVIDIA_CONTAINER_TOOLKIT_VERSION=1.17.8-1
                    sudo apt-get install -y \
                        nvidia-container-toolkit=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
                        nvidia-container-toolkit-base=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
                        libnvidia-container-tools=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
                        libnvidia-container1=${NVIDIA_CONTAINER_TOOLKIT_VERSION}

                    sudo nvidia-ctk runtime configure --runtime=docker
                    # restart Docker
                    sudo systemctl restart docker

                    echo "✅ NVIDIA Container Toolkit installed and Docker restarted."
                    USE_GPU=true
                fi
            else
                echo "❌ This script is for Debian-based systems only. Detected OS: $NAME"
                exit 1
            fi
        else
            echo "❌ /etc/os-release not found. This script requires a standard Linux environment."
        fi
        ;;
    Darwin*)
        echo "🍎 Running on macOS"
        echo "⚠️  NVIDIA Container Toolkit installation skipped (not supported on macOS)"
        ;;
    CYGWIN*|MINGW32*|MINGW64*)
        echo "💻 Running on Windows (via MSYS/Cygwin)"
        echo "⚠️  NVIDIA Container Toolkit installation skipped (Windows not supported via this method)"
        ;;
    *)
        echo "❓ Unknown OS: $OS"
        echo "⚠️  Unsupported platform. Exiting."
        exit 1
esac


# Remove existing container if exists (optional)
docker rm -f $DOCKER_CONTAINER_NAME || true

docker build -t $DOCKER_IMAGE_NAME -f $DOCKERFILE_PATH --build-context root=../ .
# -p 2222:22 maps the container’s port 22 (SSH) to port 2222 on all network interfaces (0.0.0.0) of the host machine, so if there's no firewall rules protecting port 2222, it'll be publicaly accessible. instead, we use 127.0.0.1:2222:22 to bind it only to localhost, so that it is not accessible from outside the host machine.
DOCKER_RUN_CMD=(
    docker run -d
    -v "${SCRIPT_DIR}/../:/app"
    -p "127.0.0.1:2222:22"
    --name "$DOCKER_CONTAINER_NAME"
)

if [ "$USE_GPU" = true ]; then
    DOCKER_RUN_CMD+=(--gpus all)
    
    # i think that VSCode start to silently fail to launch after installing nvidia-container-toolkit. When running code --verbose, we get this error: Failed to move to new namespace: PID namespaces supported, Network namespace supported, but failed: errno = Operation not permitted [270:0617/181843.894638:FATAL:zygote_host_impl_linux.cc(211)] Check failed: . : Invalid argument (22)
    # code --no-sandbox ends up working, so we investigate docker's security settings with `docker info --format '{{.SecurityOptions}}'`
    # output: [name=apparmor name=seccomp,profile=builtin name=cgroupns]
    # it shows that seccomp is enabled, so we tried disabling it with the following command and it worked.
    # DOCKER_RUN_CMD+=(--security-opt seccomp=unconfined)
    # therefore we try to relax the seccomp profile for the container. custom-seccomp.json was sourced with curl -o custom-seccomp.json https://raw.githubusercontent.com/moby/moby/master/profiles/seccomp/default.json
    # this sadly doesnt work, so we'll just use --no-sandbox when running vscode for now.
    # DOCKER_RUN_CMD+=(--security-opt seccomp="${SCRIPT_DIR}/custom-seccomp.json")
fi

DOCKER_RUN_CMD+=("${DOCKER_IMAGE_NAME}")

echo "${DOCKER_RUN_CMD[@]}"
"${DOCKER_RUN_CMD[@]}"

# runs as root if --user not specified, but due to Dockerfile setup we do have the dockeruser that can be ssh-ed into

sleep 1 # wait for the container to start

# Check if the container is running
if [ -n "$(docker ps -q -f name=$DOCKER_CONTAINER_NAME)" ]; then
    echo "Docker container $DOCKER_CONTAINER_NAME is running."
else
    echo "Failed to start Docker container $DOCKER_CONTAINER_NAME."
    exit 1
fi

echo "Starting SSH tunnel..."
# Instead of using the -p flag to expose the VNC port (LOCAL_PORT) directly on your local machine, we use SSH port forwarding , which securely forwards traffic from a local port (e.g., 5901) through an encrypted SSH tunnel to the same port inside the remote container or server — where it is being listened to by the vncserver.
SSH_CMD="ssh -L ${LOCAL_PORT}:localhost:5901 $HOST_ENTRY -N"
${SSH_CMD} &
TUNNEL_PID=$!
echo "${TUNNEL_PID}" > $SCRIPT_DIR/.vnc-tunnel.pid
echo "SSH tunnel started with PID: ${TUNNEL_PID}"

cat ./host-vnc-setup.sh | ssh $HOST_ENTRY bash