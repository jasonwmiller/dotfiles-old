#!/bin/bash
echo "installing oh-my-zsh";
echo "setting up dofiles";
ln -s ~/dotfiles/zshrc ~/zshrci;
ln -s ~/dotfiles/vim ~/.vimrc;
echo " initing vim plugins";
cd ~/dotfiles;
git submodule update --init;
