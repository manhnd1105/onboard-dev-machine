#!/bin/bash

if [[ ":\$PATH:" != *":\$HOME/dotnet:"* ]]; then
curl -O https://download.visualstudio.microsoft.com/download/pr/35b1b4d1-b8f4-4b5c-9ddf-e64a846ee50b/93cc198f1c48fe5c4853bd937226f570/dotnet-sdk-6.0.428-linux-x64.tar.gz
curl -O https://download.visualstudio.microsoft.com/download/pr/4e3b04aa-c015-4e06-a42e-05f9f3c54ed2/74d1bb68e330eea13ecfc47f7cf9aeb7/dotnet-sdk-8.0.404-linux-x64.tar.gz
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-6.0.428-linux-x64.tar.gz -C $HOME/dotnet
tar zxf dotnet-sdk-8.0.404-linux-x64.tar.gz -C $HOME/dotnet
rm dotnet-sdk-*.tar.gz

cat <<EOF >> ~/profile.d/dotnet.sh
    export DOTNET_ROOT=\$HOME/dotnet
    export PATH=\$PATH:\$HOME/dotnet
EOF
fi

