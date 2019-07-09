# Aliasing

alias ll='ls -la'

alias l='ll'

alias entrust-start='launchctl load -w /Library/LaunchAgents/com.entrust.*'

alias entrust-stop='launchctl unload -w /Library/LaunchAgents/com.entrust.*'

# Variable Exportation
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="agnoster"
export DEFAULT_USER="frank"
export PATH=/Users/dinatale3/Applications/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
#export PATH=/Users/frank/.gem/ruby/2.3.0/bin:$PATH
export PATH=export PATH="/usr/local/opt/ruby/bin":$PATH

# Virtualenv settings
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2

# oh-my-zsh Configuration
plugins=(git docker pip python virtualenv virtualenvwrapper zsh-autosuggestions)
 
# Sourcing of Utilities
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/local/bin/virtualenvwrapper.sh
 
# Function definitions
function resetenv () {
    [ -z "${VIRTUAL_ENV}" ] && return 1
    local _VENV=$(basename ${VIRTUAL_ENV})
    local _VENV_PATH="${VIRTUAL_ENV}"
    deactivate
    rm -rf "${_VENV_PATH}"
    mkvirtualenv ${_VENV}
    hash -r
}
