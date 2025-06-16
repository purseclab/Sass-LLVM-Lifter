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
vncserver :1

# Write the xstartup content
cat > "$XSTARTUP" << 'EOF'
# /bin/sh

export XKL_XMODMAP_DISABLE=1
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS

[ -x /etc/vnc/xstartup  ] && exec /etc/vnc/xstartup
[ -r $HOME/ .Xresources ] && xrdb $HOME/ .Xresources
xsetroot -solid grey

vncconfig -iconic &
gnome-panel &
gnome-settings-daemon &
metacity &
nautilus &
gnome-terminal &
EOF

# Make xstartup executable
chmod +x "$XSTARTUP"

echo "✅ xstartup file created at $XSTARTUP"

# Restart VNC server to apply changes
vncserver -kill :1 
vncserver :1