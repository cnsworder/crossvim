" .vimrc
" cnsworder@gmail.com
"

let s:darwin = has('mac')

" set rtp+=~/.vim/plugged


" 包管理
" Plug 'gmarik/vundle'
" Plug 'L9'
" Plug 'junegunn/vim-plug'

" 首页
Plug 'liuchengxu/vim-clap'
Plug 'hardcoreplayers/dashboard-nvim'

" key mapping guid
Plug 'hecal3/vim-leader-guide'

" 目录树
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" 自动调整目录
Plug 'airblade/vim-rooter'
" 自动环境变量
if executable('direnv')
    Plug 'direnv/direnv.vim'
endif
" 快速搜索
" Plug 'FuzzyFinder'
" Plug 'ctrlpvim/ctrlp.vim'
if v:version >= 744
    Plug 'Yggdroot/LeaderF'
endif
Plug 'dyng/ctrlsf.vim'
Plug 'brooth/far.vim'
if s:darwin
    set rtp+=/usr/local/opt/fzf
else
    set rtp+=~/.fzf
endif
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tracyone/fzf-funky',{'on': 'CtrlPFunky'}



let g:used_denite=0
if v:version >= 800 && has('python3')
    Plug 'Shougo/denite.nvim'
    Plug 'Shougo/defx.nvim'
    Plug 'ozelentok/denite-gtags'
    Plug 'Shougo/unite-outline'
    Plug 'chemzqm/unite-location'
    Plug 'hewes/unite-gtags'
    let g:used_denite=1
    Plug 'voldikss/vim-floaterm'
else
    Plug 'Shougo/vimproc.vim', {'do': 'make'}
    Plug 'Shougo/unite.vim'
    Plug 'Shougo/unite-outline'
    Plug 'rafi/vim-denite-z'
    Plug 'chemzqm/unite-location'
endif

if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


" 文件图标
Plug 'ryanoasis/vim-devicons'
" bookmark
Plug 'MattesGroeger/vim-bookmarks'
Plug 'kshenoy/vim-signature'
" 状态栏
try
    if ! has('python')
        Plug 'bling/vim-airline'
    elseif has('mac')
        source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
        set laststatus=2
    else
        if !empty(glob('/usr/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim'))
            source /usr/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
        else
            Plug 'bling/vim-airline'
        endif
    endif
endtry

" Plug 'Lokaltog/vim-powerline.git'
" 多光标
Plug 'terryma/vim-multiple-cursors'
" editorconfig
Plug 'editorconfig/editorconfig-vim'

" 主题配色
" Plug 'molokai'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
" Plug 'tango.vim'

" 异步执行
Plug 'skywind3000/asyncrun.vim'

" 搜索定位
Plug 'Lokaltog/vim-easymotion'

" 搜索
Plug 'rking/ag.vim'
Plug 'dkprice/vim-easygrep'
Plug 'haya14busa/incsearch.vim'
Plug 'justinmk/vim-sneak'
Plug 'haya14busa/incsearch-easymotion.vim'

" 任务列表
Plug 'vim-scripts/TaskList.vim'

" 撤销树
Plug 'mbbill/undotree'

" 缩进提示
Plug 'Yggdroot/indentLine'
" Plug 'nathanaelkane/vim-indent-guides'

" 括号高亮
Plug 'kien/rainbow_parentheses.vim'
Plug 'Yggdroot/hiPairs'
Plug 'Valloric/MatchTagAlways'

" 括号补全
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" 扩展选择区域
Plug 'terryma/vim-expand-region'

" 头文件和源文件快速跳转
Plug 'vim-scripts/a.vim'
" 代码检查
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


" 代码注释
Plug 'scrooloose/nerdcommenter'
" golang
if v:version >= 742
    Plug 'fatih/vim-go'
endif
" python
Plug 'nvie/vim-flake8'
" python pyenv
"if executable('pyenv')
"    Plug 'lambdalisue/vim-pyenv'
"endif
" python virtualenv
" Plug 'jmcantrell/vim-virtualenv'
" web
Plug 'mattn/emmet-vim'
Plug 'ternjs/tern_for_vim'

" Vue
Plug 'posva/vim-vue'

" 代码导航
Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vista.vim'

" global导航
Plug 'vim-scripts/gtags.vim'

" 帮助文档
" Plug 'Keithbsmiley/investigate.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'

" markdown
Plug 'plasticboy/vim-markdown'

" restructuredtext
"Plug 'Rykka/riv.vim'

if s:darwin
    Plug 'rizzatti/dash.vim'
else
    Plug 'KabbAmine/zeavim.vim'
endif


" 代码段提示
Plug 'honza/vim-snippets'
if has("python") || has("python3")
    Plug 'SirVer/ultiSnips'
endif

" 代码格式化
if has("python")
    Plug 'Chiel92/vim-autoformat'
    Plug 'sbdchd/neoformat'
endif

" 标签页
" Plug 'minibufexpl.vim'
" 代码提示
if v:version > 800
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "if has('nvim')
    "    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    "else
    "    Plug 'Shougo/deoplete.nvim'
    "    Plug 'roxma/nvim-yarp'
    "    Plug 'roxma/vim-hug-neovim-rpc'
    "endif
endif

" 代码统计

call plug#end()

