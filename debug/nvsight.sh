#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $SCRIPT_DIR

DOCKER_CONTAINER_NAME="my-sass-lifter"
DOCKER_IMAGE_NAME="sass-lifter:latest"
DOCKERFILE_PATH="Dockerfile.nvsight"

SSH_CONFIG=~/.ssh/config
HOST_ENTRY="docker_nvsight"


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

# Remove existing container if exists (optional)
docker rm -f $DOCKER_CONTAINER_NAME || true

docker build -t $DOCKER_IMAGE_NAME -f $DOCKERFILE_PATH .. # set to parent directory so that build context includes all necessary files
docker run -v "$SCRIPT_DIR/../:/app" \
    -p 2222:22 -p 5901:5901 \
    --name $DOCKER_CONTAINER_NAME $DOCKER_IMAGE_NAME

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
    IdentityFile $SCRIPT_DIR/id_rsa

EOL
else
    echo "SSH config for $HOST_ENTRY already exists."
fi
