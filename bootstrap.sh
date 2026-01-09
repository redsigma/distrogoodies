#!/bin/bash

printf "Installing ansible...\n"
sudo apt install ansible -y

set -e
PYTHON_USER_BIN=$(python3 -m site --user-base)/bin

ansible --version

git clone --branch main https://github.com/redsigma/distrogoodies_internal.git private_data

PATH="/opt/Homebrew/bin:${PYTHON_USER_BIN:-}:$PATH" ansible-playbook bootstrap.yml --ask-become-pass