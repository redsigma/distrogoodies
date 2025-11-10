#!/bin/bash

printf "Installing ansible...\n"
sudo apt install ansible -y

set -e
PYTHON_USER_BIN=$(python3 -m site --user-base)/bin

ansible --version

PATH="/opt/Homebrew/bin:$PYTHON_USER_BIN:$PATH" ansible-playbook bootstrap.yml --ask-become-pass