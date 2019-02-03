syntax on

set encoding=UTF-8
set termguicolors
set number
set numberwidth=5
set mouse=a
set cmdheight=2

set autoindent
set smarttab
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set backspace=2

set shell=zsh
set noswapfile
set nowritebackup
set history=50
set ruler
set showcmd
set shiftround
set scrolloff=3
set list listchars=tab:»·,trail:·  " Display extra whitespace characters
set hidden
set inccommand=nosplit
set hlsearch

set splitbelow
set splitright

let mapleader = ";"

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

if exists('+colorcolumn')
  set textwidth=120
  set colorcolumn=+1
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif

if executable('ack')
  set grepprg=ack\ --nogroup\ --nocolor
endif
