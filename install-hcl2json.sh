#!/bin/bash

rm hcl2json_linux_amd64
wget https://github.com/tmccombs/hcl2json/releases/download/v0.6.5/hcl2json_linux_amd64
chmod u+x hcl2json_linux_amd64
mv hcl2json_linux_amd64 /usr/local/bin/hcl2json