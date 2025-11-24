#!/bin/bash

# requires sudo
# requires hyper-v and java SRE on the Windows machine
apt install gedit libgtk-3-0 xdg-utils -y


mkdir /usr/share/desktop-directories
curl -O https://downloads.syntevo.com/downloads/smartgit/smartgit-linux-25_1_0.tar.gz
tar xzf smartgit*.tar.gz
./smartgit/bin/add-menuitem.sh
