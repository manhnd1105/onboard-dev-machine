#!/bin/bash

# install ansible via python package manager
python -m pip install --user ansible

# enable ansible autocomplete on bash
python -m pip install --user argcomplete
# requires sudo
activate-global-python-argcomplete --user
