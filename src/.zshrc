export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/plugins.zsh

source $ZSH/oh-my-zsh.sh

source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/prompt.zsh-theme
source ${HOMEBREW_PREFIX:-/usr}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${HOMEBREW_PREFIX:-/usr}/share/zsh-autosuggestions/zsh-autosuggestions.zsh