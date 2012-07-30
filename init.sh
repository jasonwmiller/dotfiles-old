#!/bin/bash
echo "setting up links to dofiles";
ln -s ~/dotfiles/zshrc ~/.zshrc;
ln -s ~/dotfiles/vim ~/.vimrc;
echo " initing vim plugins";
cd ~/dotfiles;
git submodule update --init;

echo "don't forget to install oh-my-zsh";
echo "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh";
