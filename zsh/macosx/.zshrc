# Aliasing
alias ll='ls -la'
alias l='ll'

# Variable Exportation
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="agnoster"
export DEFAULT_USER="frank"
export PATH="/usr/local/opt/ruby/bin":$PATH

# Created by `userpath` on 2020-11-09 03:41:02
export PATH="$PATH:/Users/frank/.local/bin"

# oh-my-zsh Configuration
plugins=(git docker pip python zsh-autosuggestions poetry)

# Sourcing of Utilities
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export MONO_GAC_PREFIX="/usr/local"

# Init pyenv, and other *env tools.
eval "$(pyenv init -)"
eval "$(goenv init -)"
eval "$(rbenv init -)"

# Enable pipx completions
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"

# Enable Docker env
#eval `docker-machine env`

# Exporting of PATHs after initialization
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export PATH="/usr/local/opt/llvm/bin:$PATH"
