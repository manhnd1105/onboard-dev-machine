#!/bin/bash

mkdir -p ~/profile.d

cat <<EOF >> ~/.profile

# Source user environment files from ~/profile.d/
if [ -d "\$HOME/profile.d" ]; then
  for script in "\$HOME/profile.d"/*.sh; do
    if [ -f "\$script" ]; then
      source "\$script"
    fi
  done
fi
EOF

source ~/.profile
