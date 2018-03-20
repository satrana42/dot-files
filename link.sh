#!/bin/zsh
# links all DOT_FILES_DIR to their respective place

DOT_FILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER_HOME_DIR=~
DOT_FILES=( \
.bashrc \
.config/compton.conf \
.config/i3/config \
.config/i3status/config \
.inputrc \
.shell_additions.sh \
.tmux.conf \
.vimrc \
.zshrc \
)

for f in "${DOT_FILES[@]}"; do
	ln -s "${DOT_FILES_DIR}/$f" "${USER_HOME_DIR}/$f"
done
