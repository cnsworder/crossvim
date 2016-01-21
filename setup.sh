#!/usr/bin/env bash

if -e ~/.vimrc;then
    rm ~/.vimrc
fi
ln -s vimrc ~/.vimrc

if ! -e ~/.vim/bundle; then
    mkdir -p ~/.vim/bundle
fi    
if ! -e ~/.vim/bundle/vundle; then    
    ln -s vundle ~/.vim/bundle/vundle 
fi

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe;\
    ./install.sh --clang-completer

