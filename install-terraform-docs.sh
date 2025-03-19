#!/bin/bash

# requires sudo
VERSION=v0.19.0
curl -sSLo ./terraform-docs.tar.gz https://terraform-docs.io/dl/$VERSION/terraform-docs-$VERSION-$(uname)-amd64.tar.gz
tar -xzf terraform-docs.tar.gz
rm terraform-docs.tar.gz
chmod +x terraform-docs
mv terraform-docs /usr/local/bin/terraform-docs