#!/bin/bash

# ref https://github.com/LotusInputMethod/fcitx5-lotus?tab=readme-ov-file
CODENAME=$(grep '^UBUNTU_CODENAME=' /etc/os-release | cut -d'=' -f2)
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://fcitx5-lotus.pages.dev/pubkey.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/fcitx5-lotus.gpg
echo "deb [signed-by=/etc/apt/keyrings/fcitx5-lotus.gpg] https://fcitx5-lotus.pages.dev/apt/$CODENAME $CODENAME main" | sudo tee /etc/apt/sources.list.d/fcitx5-lotus.list
sudo apt update -y && sudo apt install fcitx5-lotus
