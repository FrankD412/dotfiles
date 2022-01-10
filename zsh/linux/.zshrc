# Aliasing
alias ll='ls -la'
alias l='ll'

# Variable Exportation
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="agnoster"
export DEFAULT_USER="frank"

# Created by `userpath` on 2020-11-09 03:41:02
export PATH="$PATH:/Users/frank/.local/bin"

# oh-my-zsh Configuration
plugins=(git docker pip python zsh-autosuggestions poetry)

# Sourcing of Utilities
source $ZSH/oh-my-zsh.sh
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable pipx completions
eval "$(register-python-argcomplete pipx)"

# Setup keychain
eval `keychain --eval --agents ssh id_rsa id_rsa_gh`

# Exporting of PATHs after initialization
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# Init pyenv, and other *env tools.
eval "$(pyenv init --path)"
eval "$(goenv init -)"
eval "$(rbenv init -)"
