" .vimrc
" cnsworder@gmail.com
"

let s:darwin = has('mac')

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
Plug 'Shougo/denite.nvim'
"文件图标
Plug 'ryanoasis/vim-devicons'
"bookmark
Plug 'MattesGroeger/vim-bookmarks'
Plug 'kshenoy/vim-signature'
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
Plug 'haya14busa/incsearch.vim'
Plug 'justinmk/vim-sneak'
Plug 'haya14busa/incsearch-easymotion.vim'
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
" Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'


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

