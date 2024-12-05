#!/bin/bash

# requires sudo
apt install python3 python3-pip pipx

cat <<EOF >> ~/profile.d/python.sh

if [[ ":\$PATH:" != *":\$HOME/.local/bin:"* ]]; then
    export PATH=\$PATH:\$HOME/.local/bin
fi
EOF
