#!/bin/bash

curl https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/src/.zshrc > ${ZDOTDIR:-$HOME}/.zshrc
mkdir -p $ZSH_CUSTOM/plugins/customizations
touch $ZSH_CUSTOM/plugins/customizations/customizations.plugin.zsh
curl https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/src/plugins/customizations/customizations.plugin.zsh > $ZSH_CUSTOM/plugins/customizations/customizations.plugin.zsh
mkdir -p $ZSH_CUSTOM/themes
touch $ZSH_CUSTOM/themes/prompt.zsh-theme
curl https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/src/plugins/themes/prompt.zsh-theme > $ZSH_CUSTOM/themes/prompt.zsh-theme
