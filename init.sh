#!/bin/bash
echo "This will setup all the aliases for the dofiles,";
echo "Make sure that zsh, and oh-my-zsh is installed and that the dotfiles repo is in ~/dorfiles"
echo "to install oh-my-zsh:";
echo "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh";
read -p "Continue with this setup? (y/n)?" CONT
if [ "$CONT" == "y" ]; then
    echo "setting up links to dofiles";
    ln -s ~/dotfiles/zshrc ~/.zshrc;
    ln -s ~/dotfiles/.vim ~/.vim;
    ln -s ~/dotfiles/.vim/vimrc ~/.vimrc;
    ln -s ~/dotfiles/vimrc.local ~/.vimrc.local;
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf;
    ln -s ~/dotfiles/oh-my-zsh/themes/diz.zsh-theme ~/.oh-my-zsh/themes;
    echo "Now Checking out vim plugins";
    cd ~/dotfiles;
    git submodule update --init;
    cd ~/dotfiles/.vim
    git submodule add git://github.com/jasonwmiller/tmux-config.git bundle/tmux-config
    git submodule update --init
else
      echo "that was close...";
fi

