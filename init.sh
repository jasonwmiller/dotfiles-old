#!/bin/bash
echo "setting up links to dofiles";
ln -s ~/dotfiles/zshrc ~/.zshrc;
ln -s ~/dotfiles/.vim ~/.vim;
ln -s ~/dotfiles/vimrc.local ~/.vimrc.local;
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf;
echo " initing vim and plugins";
cd ~/dotfiles;
git submodule update --init;
cd ~/dotfiles/.vim
git submodule add git://github.com/jasonwmiller/tmux-config.git bundle/tmux-config
git submodule update --init
#ln -s ~/.vim/bundle/tmux-config/tmux.conf ~/.tmux.conf
echo "don't forget to install oh-my-zsh";
echo "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh";
