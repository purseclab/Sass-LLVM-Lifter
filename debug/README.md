# Nsight Compute & VNC Debugging Setup

This directory contains scripts and configurations for interactively debugging the lifter pipeline within a Docker container using NVIDIA Nsight Compute and a VNC server.

## Quick Start

1. Start the container with the GUI server enabled:
   ```bash
   ./nvsight.sh
   ```
2. *Optional*: If you encounter SSH fingerprint warnings, remove the previous fingerprint for your localhost:
   ```bash
   ssh-keygen -f "$HOME/.ssh/known_hosts" -R "[localhost]:2222"
   ```
3. On your host machine, run the following port forwarding command:
   ```bash
   ssh -L 5901:localhost:5901 [SSH_USER]@[SSH_HOST] -N
   ```
4. Use RealVNC or any VNC client to connect to `localhost:5901` (Password: `secure`).

---

## Docker Buildx Requirement

Linux's standard `docker` engine does not include `buildx` by default, which is required for the `--build-context` flag used in our deployment. You must install the `docker-buildx-plugin` before running `./nvsight.sh`.

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install the plugin
sudo apt install docker-buildx-plugin
```

---

## Technical Details: SSH Tunneling

The VNC server runs entirely inside the isolated container. To securely expose this server to your local machine, we use layered SSH tunneling (port forwarding). 

### Single-Hop Tunnel (Working Directly on Host)
If you are working physically on the Linux host machine, `nvsight.sh` configures SSH tunneling to automatically forward traffic from the host's port `5901` to the container's port `5901`.

### Double-Hop Tunnel (Working via Remote Server)
If your host itself is a remote server (e.g., you are SSHing from a laptop to a lab machine), you must establish an additional SSH tunnel from your local machine to the remote server. For example, forward your local port `5902` to the remote server's port `5901`:

```bash
ssh -L 5902:localhost:5901 user@remote.ip.address -N
```

Once both tunnels are active, connect to the VNC session using a VNC client on your local machine via:
```text
localhost:5902
```

This effectively chains two SSH tunnels:
```text
[Local VNC Client] → [Local SSH Tunnel:5902] → [Remote Host:5901] → [Container:5901]
```

### Why Use Two Tunnels?

1. **Security:** VNC traffic is unencrypted by default. Tunneling through SSH encrypts the stream and ensures no VNC ports are publicly exposed.
2. **Firewall Compatibility:** We utilize only standard SSH ports. No additional firewall rules are required to allow incoming VNC connections.
