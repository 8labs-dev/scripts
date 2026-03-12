#!/usr/bin/env zsh

mkdir -p ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/customizations 
touch ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/customizations/customizations.plugin.zsh ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/plugins.zsh ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/prompt.zsh-theme

curl https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/src/.zshrc > ${ZDOTDIR:-$HOME}/.zshrc
curl https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/src/plugins/customizations/customizations.plugin.zsh > ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/customizations/customizations.plugin.zsh
curl https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/src/plugins/plugins.zsh > ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/plugins.zsh
curl https://raw.githubusercontent.com/8labs-dev/scripts/refs/heads/main/src/themes/prompt.zsh-theme > ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/prompt.zsh-theme

source ${ZDOTDIR:-$HOME}/.zshrc