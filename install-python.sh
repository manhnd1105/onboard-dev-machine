#!/bin/bash

# requires sudo
curl https://pyenv.run | bash
exec $SHELL
pyenv install 3.12
pyenv global 3.12

cat <<EOF >> ~/profile.d/python.sh
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]]
if [[ ":\$PATH:" != *":\$PYENV_ROOT/bin:"* ]]; then
    export PATH=\$PATH:\$PYENV_ROOT/bin
fi
eval "$(pyenv init - bash)"
EOF
