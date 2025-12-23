Linux’s docker doesnt hv buildx (according to readme at https://github.com/docker/buildx), buildx needed for the --build-context flag, so we need to install `docker-buildx-plugin` before running `./nvsight.sh` 

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
```

Then, 

```bash
sudo apt install docker-buildx-plugin
```


**Miscellaneous Notes:**

The VNC server is running inside the container. On the host machine, SSH tunneling (port forwarding) is configured to forward traffic from the host's port `5901` to the container's port `5901`. This configuration is typically set up in the script `nvsight.sh`.

If the host itself is a remote server, you can establish an additional SSH tunnel from your local machine — for example, forwarding your local port `5902` to the remote server's port `5901`.

```
ssh -L 5902:localhost:5901 user@ip.addr -N
```

Once both tunnels are active, you can connect to the VNC session using a VNC client (we use RealVNC) on your local machine by connecting to:

```
localhost:5902
```

This effectively routes your VNC connection through two layers of SSH tunneling:

```
[Local VNC Client] → [Local SSH Tunnel:5902] → [Remote Host:5901] → [Container:5901]
```


- **VNC over SSH Tunneling** is a secure way to access GUI desktops inside containers without exposing ports publicly.
- Using `localhost:5902` on your local machine ensures:
  - You don’t need to open any firewall ports on the remote host.
  - Your VNC traffic is encrypted via SSH.

Why Use Two Tunnels?

We're essentially chaining two SSH tunnels:
1. From **host to container** (managed by `nvsight.sh`)
2. From **local machine to host**

This layered approach ensures:
- Security (no exposed VNC ports)
- Compatibility with firewalls (we're just utilizing SSH port and so no additional ports need to be allowed by firewall for incoming connections)
