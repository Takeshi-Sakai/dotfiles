#!/bin/bash

DOT_FILES=( .tmux.conf .vimrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

echo "if you need to synchronize .bash_profile, run rm ~/.bash_profile; rm ~/.bashrc; ln -s ~/dotfiles/.bash_profile ~/.bash_profile; ln -s ~/dotfile/.bashrc ~/.bashrc"

# NeoBundle のセットアップ
[ ! -d ~/.vim/bundle ] && mkdir -p ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim && echo "you should run following command to setup plugins ->  vim -c ':NeoBundleInstall'"
