# return if not in interactive mode
[[ $- != *i* ]] && return

# common shell additions
export CURRENT_SHELL="bash"; source ~/.shell_additions.sh
