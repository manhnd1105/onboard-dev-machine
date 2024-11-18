#!/bin/bash

apt install gedit libgtk-3-0 xdg-utils -y

mkdir /usr/share/desktop-directories

curl -O https://downloads.syntevo.com/downloads/smartgit/smartgit-linux-24_1_0.tar.gz
tar xzf smartgit*.tar.gz

./smartgit/bin/add-menuitem.sh
