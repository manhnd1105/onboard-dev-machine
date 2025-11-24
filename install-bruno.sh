#!/bin/bash
# requires sudo
# Create keyrings directory 
mkdir -p /etc/apt/keyrings 

# Update and install GPG and curl 
apt update && sudo apt install gpg curl 

# Add the Bruno repository key 
curl -fsSL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x9FA6017ECABE0266" | gpg --dearmor | sudo tee /etc/apt/keyrings/bruno.gpg > /dev/null 

# Set permissions for the GPG key file 
chmod 644 /etc/apt/keyrings/bruno.gpg 

# Add the Bruno repository 
"deb [arch=amd64 signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" | sudo tee /etc/apt/sources.list.d/bruno.list 

# Update and install Bruno 
apt update -y && apt install -y bruno
