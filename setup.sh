#!/usr/bin/env bash
# 快速安装配置


if [ -L ${HOME}/.vimrc  -o -e ${HOME}/.vimrc ]; then
    echo "remove ~/.vimrc"
    rm -rf ${HOME}/.vimrc
fi

ln -s `pwd`/vimrc ${HOME}/.vimrc

if [ -L ${HOME}/.vim -o -e ${HOME}/.vim ]; then
    echo "remove ~/.vim"
    rm -rf ${HOME}/.vim
fi

ln -s `pwd`/vim ${HOME}/.vim

echo "Install crossvim"

vim +PlugUpgrade +PlugInstall +qall

# 编译安装 ycmd
# cd ~/.vim/bundle/YouCompleteMe;\
#    ./install.sh --clang-completer

# 安装powerline
# if which pip; then
#    pip install powerline-status
# fi
