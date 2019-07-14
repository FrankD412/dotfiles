#!/bin/bash

# Install zsh
apt-get install zsh

# Update apt and upgrade
apt-get update && apt-get upgrade

# Install python3 and pip3
apt-get install python3 && apt-get install python3-pip

# Install virtualenv and virtualenvwrapper
pip3 install virtualenv && pip3 install virtualenvwrapper

# Install dev packages
# iPython, flake8 and pydocstyle
apt-get install build-essential
pip3 install ipython flake8 and pydocstyle

# Install testing packages
pip install tox pytest

# Install ruby
apt-get install ruby
gem install bundler

# Clone oh-my-zsh and other add ons
git clone https://github.com/robbyrussell/oh-my-zsh.git
ln -s oh-my-zsh $HOME/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
chmod g-w,o-w $ZSH_CUSTOM/plugins/zsh-autosuggestions
cp ./reference/agnoster.zsh-theme ./oh-my-zsh/themes/agnoster_frank.zsh-theme

# Copy global configurations
cp ./reference/.zshrc $HOME/.zshrc
cp ./reference/.gitignore $HOME/
cp ./reference/.gitconfig $HOME/
