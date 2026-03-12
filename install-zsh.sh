#!/bin/bash

export CHSH=no

apt update -y && apt upgrade -y

apt install git wget curl -y 
apt install zsh -y
apt install zsh-autosuggestions zsh-syntax-highlighting autojump -y

chsh -s $(which zsh)