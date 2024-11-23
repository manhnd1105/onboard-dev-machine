#!/bin/bash

# Define the wsl.conf file location
WSL_CONF="/etc/wsl.conf"

# Check if the file exists, create if it doesn't
if [ ! -f "$WSL_CONF" ]; then
    echo "Creating /etc/wsl.conf as it does not exist..."
    sudo touch "$WSL_CONF"
fi

# Check if the 'interop' section exists and 'appendWindowsPath' is set to false
if grep -q "\[interop\]" "$WSL_CONF"; then
    echo "The [interop] section exists, checking if appendWindowsPath is set to false..."
else
    echo "[interop]" | sudo tee -a "$WSL_CONF" > /dev/null
fi

# Check if 'appendWindowsPath' is set to false, if not, set it to false
if grep -q "appendWindowsPath" "$WSL_CONF"; then
    sudo sed -i 's/^appendWindowsPath.*/appendWindowsPath = false/' "$WSL_CONF"
else
    echo "appendWindowsPath = false" | sudo tee -a "$WSL_CONF" > /dev/null
fi

# Confirmation message
echo "Successfully updated /etc/wsl.conf to disable Windows paths in PATH."
