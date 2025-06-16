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

# Remove existing container if exists (optional)
docker rm -f $DOCKER_CONTAINER_NAME || true

docker build -t $DOCKER_IMAGE_NAME -f $DOCKERFILE_PATH .. # set to parent directory so that build context includes all necessary files
docker run -d -v "$SCRIPT_DIR/../:/app" \
    -p 2222:22 \
    --name $DOCKER_CONTAINER_NAME $DOCKER_IMAGE_NAME
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