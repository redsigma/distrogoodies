#!/bin/bash

printf "Installing ansible...\n"
sudo apt install ansible -y

set -e
PYTHON_USER_BIN=$(python3 -m site --user-base)/bin

ansible --version

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
if [ ! -d "$SCRIPT_DIR/private_data" ]; then
    read -s -p "GitHub token: " GIT_TOKEN
    echo

    git clone --branch main https://${GIT_TOKEN}@github.com/redsigma/distrogoodies_internal.git $SCRIPT_DIR/private_data
fi


PATH="/opt/Homebrew/bin:${PYTHON_USER_BIN:-}:$PATH" ansible-playbook bootstrap.yml --ask-become-pass