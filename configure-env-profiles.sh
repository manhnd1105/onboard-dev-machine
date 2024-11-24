#!/bin/bash

mkdir -p ~/profile.d

# for all shells
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

# fix for non-login terminal such as VS Code built-in
cat <<EOF >> ~/.bashrc
# Source user environment files from ~/profile.d/
if [ -d "\$HOME/profile.d" ]; then
  for script in "\$HOME/profile.d"/*.sh; do
    if [ -f "\$script" ]; then
      source "\$script"
    fi
  done
fi
EOF
