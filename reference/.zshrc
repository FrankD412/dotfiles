# Aliasing
alias ll='ls -la'
alias l='ll'
alias python='python3'
alias pip='pip3'
alias ipython='python3 -m IPython'

export ZSH=$HOME/.oh-my-zsh
export DEFAULT_USER=$USER

# Sourcing of Utilities
source $ZSH/oh-my-zsh.sh
export ZSH_THEME=agnoster_frank

# Virtualenv Setup
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

# oh-my-zsh Configuration
plugins=(git pip python bundler virtualenv virtualenvwrapper zsh-autosuggestions)

function resetenv() {
    [ -z "${VIRTUAL_ENV}" ] && return 1
    local _VENV=$(basename ${VIRTUAL_ENV})
    local _VENV_PATH="${VIRTUAL_ENV}"
    deactivate
    rm -rf "${_VENV_PATH}"
    mkvirtualenv ${_VENV}
    hash -r
}