ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jtriley"

# Prevent weekly auto updates.
DISABLE_AUTO_UPDATE=true.

plugins=(zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

export TERM="xterm-256color"
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Sanity check for "rm *".
setopt RM_STAR_WAIT

# Use spelling correction.
setopt CORRECT	

# Disable less history.
LESSHISTFILE=/dev/null
