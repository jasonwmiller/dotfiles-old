#!/bin/bash
echo "This will setup all the aliases for the dotfiles,";
echo "Make sure that zsh, and oh-my-zsh is installed and that the dotfiles repo is in ~/dotfiles"
echo "to install oh-my-zsh:";
echo "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh";
read -p "Continue with this setup? (y/n)?" CONT
if [ "$CONT" == "y" ]; then
    echo "backing up existing dotfiles";
    mkdir ~/conf.bak
    rm -rf ~/conf.bak/.atom
    mv ~/.zshrc ~/conf.bak/.zshrc;
    mv ~/.tmux.conf ~/conf.bak/.tmux.conf
    mv ~/.slate ~/conf.bak/.slate
    mv ~/.atom ~/conf.bak/.atom
    rm ~/.oh-my-zsh/themes/diz.zsh-theme
    mv "/Users/$USER/Library/Application Support/Karabiner/private.xml" ~/conf.bak/karabiner.private.xml
    echo "setting up links to dofiles";
    ln -s ~/dotfiles/.zshrc ~/.zshrc;
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf;
    ln -s ~/dotfiles/oh-my-zsh/themes/diz.zsh-theme ~/.oh-my-zsh/themes;
    ln -s ~/dotfiles/.slate ~/.slate
    ln -s ~/dotfiles/.atom ~/.atom
    ln -s ~/dotfiles/karabiner/private.xml "/Users/$USER/Library/Application Support/Karabiner/private.xml"
    mkdir ~/bin
    source ~/.zshrc
else
      echo "game over man";
fi
