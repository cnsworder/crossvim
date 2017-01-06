" .vimrc
" cnsworder@gmail.com
"

set nocompatible
set fileencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gb18030,gb2312,gbk
set clipboard=unnamed

let s:darwin = has('mac')

set backupdir=/tmp
set directory=/tmp

" set rtp+=~/.vim/plugged

if empty(glob('~/.vim/autoload/plug.vim'))
    !mkdir autoload
    !wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O ~/.vim/autoload/plug.vim
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

"包管理
" Plug 'gmarik/vundle'
" Plug 'L9'
"Plug 'junegunn/vim-plug'

"首页
Plug 'mhinz/vim-startify'
"目录树
Plug 'The-NERD-tree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"快速搜索
"Plug 'FuzzyFinder'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf.vim'
"文件图标
Plug 'ryanoasis/vim-devicons'
"bookmark
Plug 'MattesGroeger/vim-bookmarks'
"状态栏
if ! has('python')
    Plug 'bling/vim-airline'
elseif has('mac')
    source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
    set laststatus=2
else
    source /usr/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
endif
"Plug 'Lokaltog/vim-powerline.git'
"多光标
Plug 'terryma/vim-multiple-cursors'
" editorconfig
Plug 'editorconfig/editorconfig-vim'

"主题配色
" Plug 'molokai'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
"Plug 'tango.vim'

" 异步执行
Plug 'skywind3000/asyncrun.vim'

"搜索定位
Plug 'Lokaltog/vim-easymotion'
"搜索
Plug 'rking/ag.vim'
Plug 'dkprice/vim-easygrep'
"任务列表
Plug 'TaskList.vim'
"撤销树
Plug 'mbbill/undotree'
"缩进提示
Plug 'Yggdroot/indentLine'
"Plug 'nathanaelkane/vim-indent-guides'
"括号高亮
Plug 'kien/rainbow_parentheses.vim'
"括号补全
Plug 'jiangmiao/auto-pairs'
Plug 'surround.vim'
" 扩展选择区域
Plug 'terryma/vim-expand-region'

"头文件和源文件快速跳转
Plug 'a.vim'
"代码检查
if v:version >= 703
    Plug 'w0rp/ale'
else
    Plug 'scrooloose/syntastic'
endif

" git
Plug 'mattn/gist-vim'
Plug 'airblade/vim-gitgutter'
if v:version >= 703
    Plug 'mhinz/vim-signify'
else
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
endif


"代码注释
Plug 'scrooloose/nerdcommenter'
"golang
Plug 'fatih/vim-go'
"python
Plug 'vim-flake8'
"web
Plug 'mattn/emmet-vim'

"代码导航
Plug 'Tagbar'

"global导航
Plug 'gtags.vim'

"帮助文档
"Plug 'Keithbsmiley/investigate.vim'
Plug 'DoxygenToolkit.vim'

if s:darwin
    Plug 'rizzatti/dash.vim'
else
    Plug 'KabbAmine/zeavim.vim'
endif


"代码段提示
Plug 'honza/vim-snippets'
if has("python")
    Plug 'SirVer/ultiSnips'
endif

"代码格式化
if has("python")
    Plug 'Chiel92/vim-autoformat'
endif

"标签页
"Plug 'minibufexpl.vim'
"代码提示
if v:version < 703
    Plug 'clang-complete'
else
    Plug 'Valloric/YouCompleteMe'
endif

" 代码统计
"Plug 'wakatime/vim-wakatime'

"Plug 'FriedSock/smeargle'
"Plug 'snipMate'
"Plug 'OmniCppComplete'


"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'

call plug#end()


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

set nobackup
set cursorline
set cursorcolumn
set ruler
"set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
"set list
"let g:indent_guides_auto_colors=1
"let g:indent_guides_start_level=2
"let g:indent_guides_guide_size=1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_char = '┆'
"IndentGuidesToggle

"let g:indentLine_char = "|"
let g:indentLine_concealcursor = 'inc'
autocmd FileType json let g:indentLine_conceallevel = 0

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = '<'
"let g:airline#extensions#tabline#right_sep = '>'
"

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1

"let t_Co=256
set laststatus=2
set number
set showcmd
set nowrap
set cscopeprg=gtags-cscope
"cscope add GTAGS

"set encoding=utf-8
"let g:Powerline_symbols = 'unicode'
let g:ycm_complete_in_comments = 1 " 注释补全
let g:ycm_complete_in_strings = 1 " 字符串补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串采集
let g:ycm_collect_identifiers_from_tags_files = 1 " tags文件采集
let g:ycm_seed_identifiers_with_syntax = 1 " 关键字补全
let g:ycm_min_num_of_chars_for_completion = 1 " 第一个字符开始补全
let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_filetype_blacklist = {
            \ 'tagbar' : 1,
            \ 'text' : 1,
            \ 'qf' : 1,
            \ 'gitcommit' : 1,
            \ }

let g:clang_complete_copen=1
let g:clang_periodic_quickfix=1
let g:clang_sinppets=1
let g:clang_close_preview=1
let g:clang_user_library=1
let g:clang_user_options=" -stdlib=libc++ -std=c++14 -Wall -fexceptions -I/usr/include -I/usr/local/include -I/usr/include/c++/4.9.2 -I/usr/include/c++/4.9.2/x86_64-unknown-linux-gnu"

let g:syntastic_check_on_open = 0
let g:syntastic_cpp_compiler_options = ' -std=c++14 -Wall'

"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]


"let g:syntastic_c_cflags_file=".clang_complete"
"let g:airline#extension#tabline#enabled = 1
"let g:ctrlp_cmd = 'CtrlPBuffer'

"set listchars=tab:→→,eol:◀,trail:·,nbsp:▢

"let mapleader=";"
let mapleader="\<Space>"

nnoremap <leader>u :UndotreeToggle <cr>
nnoremap <leader>nn :NERDTreeToggle <cr>
nnoremap <leader>tt :TagbarToggle <cr>
nnoremap <leader>uu :PlugUpdate <cr>
nnoremap <leader>uuu :PlugUpgrade <cr>
nnoremap <leader>n :set number! <cr>
nnoremap <leader>l :set list! <cr>
nnoremap <leader>b :set wrap!<cr>
nnoremap <silent> <leader>gt :YcmCompleter GoTo <cr>
nnoremap <silent> <leader>gi :YcmCompleter GoToInclude <cr>
nnoremap <silent> <leader>gd :YcmCompleter GoToDefinition <cr>

nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pt :CtrlPBufTag<cr>
nnoremap <leader>pta :CtrlPBufTagAll<cr>

nmap <silent> <leader>mm :BookmarkToggle<cr>
nmap <silent> <leader>ml :BookmarkShowAll<cr>
nmap <silent> <leader>ms :BookmarkAnnotate<cr>
nmap <silent> <leader>mn :BookmarkNext<cr>
nmap <silent> <leader>mp :BookmarkPrev<cr>

nmap <silent> <leader>ga :Git add %<cr>
nmap <silent> <leader>gs :Gstatus<cr>
nmap <silent> <leader>gc :Gcommit<cr>
nmap <silent> <leader>gf :Gpull<cr>
nmap <silent> <leader>gp :Gpush<cr>
nmap <silent> <leader>gl :Glog<cr>

nmap <silent> <leader>ww :cw<cr>
nmap <silent> <leader>wc :cclose<cr>
nmap <silent> <leader>s :Ag<space>
nmap <silent> <leader>q :q <cr>
nmap <silent> <leader>qq :q! <cr>
nmap <silent> <leader>w :w <cr>
nmap <silent> <leader>wq :wq <cr>
nmap <silent> <leader>qa :qall<cr>
nmap <silent> <leader>a :A <cr>
nmap <silent> <leader>d :TaskList <cr>
nmap <silent> <leader>i :IndentLinesToggle<cr>

nmap <Leader> <Plug>(easymotion-prefix)
nmap / <Plug>(easymotion-sn)
nmap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <leader>zz :set foldenable<cr>
map <leader>zn :set nofoldenable<cr>

"nerdcommment <leader>cc <leader>cu

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
nmap     <C-F>l <Plug>CtrlSFQuickfixPrompt
vmap     <C-F>l <Plug>CtrlSFQuickfixVwordPath
vmap     <C-F>L <Plug>CtrlSFQuickfixVwordExec

let g:UltiSnipsExpandTrigger="<c-j>"

"set foldmethod=syntax
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

let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

if executable('ag')
    set grepprg="ag -nogroup --nocolor"
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    "let g:ctrlp_use_caching = 0
endif

function! Hackvim()
    :e ~/.vimrc
endfunction
command! Hackvim :call Hackvim()
nmap <leader>h :call Hackvim()<cr>

"set conceallevel=0

"PlugUpdate
