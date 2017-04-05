" .vimrc
" cnsworder@gmail.com
"

if empty(glob('~/.vim/autoload/plug.vim'))
    !mkdir ~/.vim/autoload
    !wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O ~/.vim/autoload/plug.vim
    source ~/.vim/autoload/plug.vim
    PlugInstall
endif

try
    call plug#begin('~/.vim/plugged')
catch
    " !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
    source .vimrc
    PlugInstall
    if has("python")
        !pip install powerline-status
    endif
    quit
endtry

" -- init
source ~/.vim/init.vim

" -- plug
source ~/.vim/plugs.vim

" -- conf
source ~/.vim/conf.vim

" -- style
source ~/.vim/style.vim

" -- keymap
source ~/.vim/keymap.vim

