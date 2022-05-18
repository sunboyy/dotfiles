#!/bin/bash

# Install Vundle if not exists
if [ -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    echo "Vundle is already installed, skipped installing Vundle."
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Install Vundle plugins
vim -u vim/vundle-plugins.vim +PluginInstall +qall

# Copy Vim configuration file
cp vim/vimrc ~/.vimrc
cp vim/vundle-plugins.vim ~/.vim
