#!/bin/bash

sudo apt install gedit libgtk-3-0 xdg-utils -y

sudo mkdir /usr/share/desktop-directories

curl -O https://downloads.syntevo.com/downloads/smartgit/smartgit-linux-24_1_0.tar.gz
tar xzf smartgit*.tar.gz

sudo ./smartgit/bin/add-menuitem.sh
