" .vimrc
" cnsworder@gmail.com
" 自定义配置

let s:darwin = has('mac')

set nocompatible
set fileencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gb18030,gb2312,gbk
set clipboard=unnamed
set nobackup
set autochdir
" set hlsearch

set cscopeprg=gtags-cscope
"cscope add GTAGS

"set encoding=utf-8

set backupdir=/tmp
set directory=/tmp

let g:indentLine_fileTypeExclude = ['dashboard']

let g:dashboard_default_executive ='clap'
let g:dashboard_fzf_engine = 'ag'
let g:dashboard_default_header = 'superman'

" 匹配增强
if ! has("nvim") && v:version > 800
    packadd! matchit
endif
" set rtp+=~/.vim/plugged

" nerdtree
let g:NERDTreeShowBookmarks = 1

let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'


if executable('ag')
    set grepprg="ag -nogroup --nocolor"
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    "let g:ctrlp_use_caching = 0
endif

let g:sneak#label = 1
let g:incsearch#autonohlsearch = 1

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

"let g:Powerline_symbols = 'unicode'


"let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
            \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
            \ 'python': ['pyls'],
            \ 'shell': ['shellcheck'],
            \ }


let g:AutoPairs = {'[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
inoremap <buffer><silent> ) <C-R>=AutoPairsInsert(')')<CR>

let g:clang_complete_copen=1
let g:clang_periodic_quickfix=1
let g:clang_sinppets=1
let g:clang_close_preview=1
let g:clang_user_library=1
let g:clang_user_options=" -stdlib=libc++ -std=c++14 -Wall -fexceptions -I/usr/include -I/usr/local/include -I/usr/include/c++/4.9.2 -I/usr/include/c++/4.9.2/x86_64-unknown-linux-gnu"

let g:syntastic_check_on_open = 0
let g:syntastic_cpp_compiler_options = ' -std=c++14 -Wall'

" unite
let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
let g:unite_enable_start_insert = 1
let g:unite_eanble_auto_select = 1
let g:unite_source_line_enable_highlight = 1
let g:unite_prompt = ">>"

" ale
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'

" leaderGuide
" let g:leaderGuide_position = 'topleft'


"let g:syntastic_c_cflags_file=".clang_complete"
"let g:airline#extension#tabline#enabled = 1
"let g:ctrlp_cmd = 'CtrlPBuffer'

"set listchars=tab:→→,eol:◀,trail:·,nbsp:▢

