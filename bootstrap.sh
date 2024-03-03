#!/bin/bash

set -e

git clone https://github.com/dhdhxji/dotfiles.git /tmp/dotfiles
cd /tmp/dotfiles



git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~

BASHRC_CUSTOM_FILENAME=".bashrc.custom"
cp $BASHRC_CUSTOM_FILENAME ~/$BASHRC_CUSTOM_FILENAME
[ ! -f ~/.bashrc ] && touch ~/.bashrc
[ -z $(grep "source ~/$BASHRC_CUSTOM_FILENAME" ~/.bashrc) ] && echo "source ~/$BASHRC_CUSTOM_FILENAME" >> ~/.bashrc

mkdir -p ~/.config/
cp -r .config/nvim ~/.config/nvim

cp .gitconfig ~

cd -