# zsh configuration
export ZSH=/home/satwant/.oh-my-zsh

ZSH_THEME="ys"

HIST_STAMPS="dd/mm/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# user configuration
# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# custom additions
source ~/.shell_additions.sh
