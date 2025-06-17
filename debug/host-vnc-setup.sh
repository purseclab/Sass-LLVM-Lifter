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

mkdir -p $VNC_DIR
touch $VNC_DIR/xstartup

# Write the xstartup content
cat > "$XSTARTUP" << 'EOF'
#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
startxfce4
EOF

chmod +x "$XSTARTUP"

echo "✅ xstartup file created at $XSTARTUP"


vncserver :1 -localhost no -geometry 1920x1080 -depth 24 -SecurityTypes VncAuth

# # set the default icon theme to gnome-icon-theme (cannot use RUN in dockerfile since this is editted at runtime)
# xfconf-query -c xsettings -p /Net/IconThemeName -s "gnome"