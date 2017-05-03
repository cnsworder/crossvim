#!/usr/bin/env bash
# 快速安装配置

if [ -e ~/.vimrc ]; then
    rm -rf ~/.vimrc
fi
ln -s vimrc ~/.vimrc

if [ -e ~/.vim ]; then
    rm -rf ~/.vim
fi
ln -s vim ~/.vim

vim +PlugUpgrade +PlugInstall +qall

# 编译安装 ycmd
# cd ~/.vim/bundle/YouCompleteMe;\
#    ./install.sh --clang-completer

# 安装powerline
# if which pip; then
#    pip install powerline-status
# fi
