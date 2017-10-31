" .vimrc
" cnsworder@gmail.com
" 快捷键配置

" 默认
" Ctrl-[ 退出插入
" Ctrl-o Ctrl-i Ctrl-t Ctrl-]
" Ctrl-o 临时退出
" Ctrl-c 退出补全
" Ctrl-y, emmet补全
" ysW' i字符两边插入引号

"let mapleader=";"
let mapleader="\<Space>"

nnoremap <leader>uu :UndotreeToggle <cr>
nnoremap <leader>ne :NERDTreeToggle <cr>
nnoremap <leader>tt :TagbarToggle <cr>
nnoremap <leader>pu :PlugUpdate <cr>
nnoremap <leader>puu :PlugUpgrade <cr>
nnoremap <leader>pi :PlugInstall <cr>
nnoremap <leader>nn :set number! <cr>
nnoremap <leader>ll :set list! <cr>
nnoremap <leader>bb :set wrap!<cr>
nnoremap <silent> <leader>gt :YcmCompleter GoTo<cr>
nnoremap <silent> <leader>gi :YcmCompleter GoToInclude<cr>
nnoremap <silent> <leader>gd :YcmCompleter GoToDefinition<cr>
nnoremap <silent> <leader>gr :YcmCompleter GoToReferences<cr>

nnoremap <leader>f :find .
nnoremap <leader>us :Unite source -start-insert<cr>
nnoremap <C-p> :LeaderfFile<cr>
nnoremap <leader>ud :UniteWithInput file/async -start-insert<cr>
nnoremap <leader>us :Unite find -start-insert<cr>
nnoremap <leader>uf :Unite file/async -start-insert<cr>
nnoremap <leader>ur :Unite file_rec/async -start-insert<cr>
nnoremap <leader>uo :Unite outline -start-insert<cr>
nnoremap <leader>ug :Unite grep -start-insert<cr>
nnoremap <leader>ub :LeaderfBuffer<cr>
nnoremap <leader>ut :Unite tab:no-current -start-insert<cr>
nnoremap <leader>uk :Unite mapping -start-insert<cr>
nnoremap <leader>td :Unite gtags/def<cr>
nnoremap <leader>tr :Unite gtags/ref<cr>
nnoremap <leader>tg :Unite gtags/grep<cr>
nnoremap <leader>tc :Unite gtags/context<cr>
nnoremap <leader>tf :Unite gtags/file<cr>
nnoremap <leader>tp :Unite gtags/path<cr>
" nnoremap <leader>pb :CtrlPBuffer<cr>
" nnoremap <leader>pt :CtrlPBufTag<cr>
" nnoremap <leader>pta :CtrlPBufTagAll<cr>
nnoremap <leader> :LeaderGuide ' '<cr>
vnoremap <leader> :LeaderGuideVisual ' '<cr>

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
nmap <silent> <leader>fm gg=G
" nmap <Leader> <Plug>(easymotion-prefix)
" nmap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

"replace 'f' with 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
"replace 't' with 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

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

function! Hackvim()
    :e ~/.vimrc
endfunction
command! Hackvim :call Hackvim()
nmap <leader>h :call Hackvim()<cr>
