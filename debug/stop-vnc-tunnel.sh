#!/bin/bash

set -e  # Exit on error

# Configuration
LOCAL_PORT=5901

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Try to get PID from saved file
PID_FILE=$SCRIPT_DIR/.vnc-tunnel.pid

# Use `|| true` to safely handle possible failures
PID=""
if [ -f "$PID_FILE" ]; then
  PID=$(cat "${PID_FILE}" 2>/dev/null || true)
fi

# Fallback: try to find matching ssh process
if [ -z "${PID}" ]; then
  PID=$(pgrep -f "ssh.*${LOCAL_PORT}" 2>/dev/null || true)
fi

# Now check if we found a PID
if [ -n "${PID}" ]; then
  echo "Stopping SSH tunnel (PID: ${PID})..."
  kill "${PID}" 2>/dev/null
  rm -f "${PID_FILE}"
  echo "SSH tunnel stopped."
else
  echo "No SSH tunnel found running."
fi