#!/bin/bash

# requires sudo
curl https://pyenv.run | bash
exec $SHELL

apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
pyenv install 3.12
pyenv global 3.12

cat <<EOF >> ~/profile.d/python.sh
export PYENV_ROOT="\$HOME/.pyenv"
[[ -d \$PYENV_ROOT/bin ]]
if [[ ":\$PATH:" != *":\$PYENV_ROOT/bin:"* ]]; then
    export PATH=\$PATH:\$PYENV_ROOT/bin
fi
eval "\$(pyenv init - bash)"
EOF

cat <<EOF >> ~/.bashrc
eval "\$(pyenv virtualenv-init -)"
EOF
