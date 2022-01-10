# add homebrew to the PATH
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
eval `$($(brew --prefix)/bin/brew shellenv)`

# Created by `userpath` on 2020-11-09 03:41:02
export PATH="$PATH:/Users/frank/.local/bin"

# Set up pyenv environment
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#export PYENV_VIRTUALENV_DISABLE_PROMPT=1
#export PATH="/Users/frank/.pyenv/shims:${PATH}"
