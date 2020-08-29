" .vimrc
" cnsworder@gmail.com
"

if empty(glob('~/.vim/autoload/plug.vim'))
    !mkdir -p ~/.vim/autoload
    !wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O ~/.vim/autoload/plug.vim
    call plug#begin('~/.vim/plugged')
    source ~/.vim/plugs.vim
    PlugInstall
endif

try
    call plug#begin('~/.vim/plugged')
catch
    source .vimrc
    PlugInstall
    if has("python")
        !pip3 install pynvim
        !pip3 install powerline-status
    endif
    quit
endtry

" -- init
" source ~/.vim/init.vim

" -- plug
source ~/.vim/plugins.vim

" -- conf
source ~/.vim/conf.vim

" -- style
source ~/.vim/style.vim

" -- keymap
source ~/.vim/keymap.vim

