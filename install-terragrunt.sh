#!/bin/bash

# requires sudo since it installs to /usr/local/bin
wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.72.6/terragrunt_linux_amd64
chmod u+x terragrunt_linux_amd64
mv terragrunt_linux_amd64 /usr/local/bin/terragrunt