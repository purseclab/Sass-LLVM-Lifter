#!/bin/bash

# Configuration
USER_HOME="/home/dockeruser"
VNC_DIR="$USER_HOME/.vnc"
XSTARTUP="$VNC_DIR/xstartup"

VNC_PASSWORD="secure"

set -e

export USER="dockeruser"

# Create .vnc directory if not exists
mkdir -p "$VNC_DIR"

# Use expect to auto-input password
/usr/bin/expect <<EOF
set timeout 10
spawn vncpasswd
expect "Password:"
send "${VNC_PASSWORD}\r"
expect "Verify:"
send "${VNC_PASSWORD}\r"
expect "Would you like to enter a view-only password (y/n)?"
send "n\r"
expect eof
EOF

# now vncserver won't prompt for a password
vncserver :1 -localhost no -geometry 1280x800 -depth 24 -SecurityTypes VncAuth