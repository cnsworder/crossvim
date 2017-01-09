" .vimrc
" cnsworder@gmail.com
" vim 界面样式配置

if has("gui_running")
    set guioptions-=T
else
    set t_Co=256
"    colorscheme tango
endif

if has("gui_running")
    "set guifont=文泉驿等宽微米黑\ 12
    "set guifont=DejaVu\ Sans\ Mono\ 10
    "set guifont=SauceCodePro\ Nerd\ Font:h16
    set guifont=Iosevka\ Nerd\ Font:h16
endif

set cursorline
set cursorcolumn
set ruler
"set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" let t_Co=256
set laststatus=2
set number
set showcmd
set nowrap
" set foldmethod=syntax
set foldmethod=indent
set nofoldenable
syntax on
set backspace=indent,eol,start

try
    " colorscheme dracula
    set background=dark
    colorscheme gruvbox
catch
    colorscheme ron
endtry
