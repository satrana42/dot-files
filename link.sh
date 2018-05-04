#!/bin/zsh
# links all DOT_FILES_DIR to their respective place

DOT_FILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER_HOME_DIR=~
DOT_FILES=( \
.bashrc \
.config/compton.conf \
.config/i3/config \
.config/i3status/config \
.ctags \
.inputrc \
.shell_additions.sh \
.tmux.conf \
.vimrc \
.zshrc \
)

for f in "${DOT_FILES[@]}"; do
  SOURCE_PATH="${DOT_FILES_DIR}/$f"
  TARGET_PATH="${USER_HOME_DIR}/$f"

  if [[ -e "$TARGET_PATH" ]]; then
    echo "Skipping $f because it already exists in $USER_HOME_DIR"
  else
    echo "Linking $SOURCE_PATH to $TARGET_PATH"
	  ln -s "$SOURCE_PATH" "$TARGET_PATH"
  fi
done
