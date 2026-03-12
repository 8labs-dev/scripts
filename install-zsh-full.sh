#!/bin/bash

export CHSH=no

bash -c "$(curl -fsSL https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/install-zsh.sh)"
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/install-omz.zsh)"
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/load-zsh-config.sh)"

