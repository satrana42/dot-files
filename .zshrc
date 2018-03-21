# return if not in interactive mode
[[ $- != *i* ]] && return

# zsh configuration
export ZSH=~/.oh-my-zsh

ZSH_THEME="ys"

HIST_STAMPS="dd/mm/yyyy"

plugins=(git vi-mode ssh-agent)

source $ZSH/oh-my-zsh.sh

# common shell additions
export CURRENT_SHELL="zsh"; source ~/.shell_additions.sh
