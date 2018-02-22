# system stuff
alias sudo='sudo '
export VISUAL=vim
export EDITOR='$VISUAL'

# cp stuff
alias g++11='g++ --std=c++11'

# venv stuff
# where to store our virtual envs
export WORKON_HOME=$HOME/virtenvs
# where projects will reside
export PROJECT_HOME=$HOME/Projects-Active
# where is the virtualenvwrapper.sh
source $HOME/.local/bin/virtualenvwrapper.sh

# fasd stuff
eval "$(fasd --init auto)"
alias v='f -e vim'
