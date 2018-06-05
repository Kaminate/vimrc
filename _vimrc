" doesn't work?
" https://github.com/tpope/vim-pathogen
" execute pathogen#infect()
"

" add the src and include search paths
set path+=w:\src
set path+=w:\include
" add recursive search
set path+=**

" match ErrorMsg '\%>80v.\+'
set ch=3    " Height of command line
set number "line numbers
set mousehide " Hide the mouse when typing text
set smartindent
set backspace=indent,eol,start
set expandtab tabstop=2
set shiftwidth=0

" folding options: group by indentation, ignore comments
set foldmethod=indent
set foldignore=

set cursorline

au GUIEnter * simalt ~x " maximize on startup


if has('gui_running')
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove scrollbar
  set guioptions-=L  "remove scrollbar
  colorscheme molokai
  if has('gui_win32')
    " better than Inconsolata, liberation mono (this is what sublime uses)
    set guifont=Consolas:h12
  endif
endif

set hlsearch " Switch on search pattern highlighting.
syntax on

" the wiki said these disable bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"TODO( N8 ): change :e to :find to work recursive, remove folder
map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
" build at work
nmap <F7> :cd w:\<CR>:w<CR>:!start w:\Build.bat & pause <CR>
" build at home
nmap <F9> :cd w:\<CR>:w<CR>:!start w:\scripts\win32build.bat & pause <CR>
" reload vimrc
"nmap <F8> :so $VIM\_vimrc <CR>
nmap <F8> :source $MYVIMRC <CR>

set ttimeoutlen=10
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>

" basically control c
vmap <Leader>y "+y

" basically control v
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nmap <Leader>h <C-w>h
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>l <C-w>l

nmap <Leader>q :q<CR>

"Use TAB to complete when typing words, else inserts TABs as usual.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

set syntax=c

" Omni_completion begin
" http://vim.wikia.com/wiki/Omni_completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" Omni_completion end

set wrap


