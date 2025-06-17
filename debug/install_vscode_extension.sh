#!/bin/bash
set -e  # Exit on error

VSCODE_EXTENSIONS_FILE="vscode_extensions.txt"

if [ ! -f $VSCODE_EXTENSIONS_FILE ]; then
    echo "Error: $VSCODE_EXTENSIONS_FILE not found"
    exit 1
fi

while read -r extension || [ -n "$extension" ]; do
    # Skip empty lines or comments (line starts with #)
    [[ -z "$extension" || "$extension" =~ ^# ]] && continue
    echo "Installing $extension..."
    code --install-extension "$extension" || {
        echo "Failed to install $extension"
        exit 1
    }
done < "$VSCODE_EXTENSIONS_FILE"

echo "All extensions installed successfully"