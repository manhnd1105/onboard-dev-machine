#!/bin/bash
wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt update
apt install powershell -y

# set as default shell
# sudo required
chsh -s /usr/bin/pwsh
