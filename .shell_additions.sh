# custom (machine specific) additions
CUSTOM_SHELL_ADDITIONS=".custom_shell_additions.sh"
if [ -e $CUSTOM_SHELL_ADDITIONS ]; then
  source $CUSTOM_SHELL_ADDITIONS
fi

# system stuff
alias sudo='sudo '
export VISUAL=vim
export EDITOR='$VISUAL'

# fasd stuff
eval "$(fasd --init auto)"
alias v='f -e vim'
