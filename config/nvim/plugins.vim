call plug#begin('~/.local/share/nvim/plugged')

Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/echodoc.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

Plug 'itchyny/lightline.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Linters + fixers
Plug 'w0rp/ale'

" Buffers in the tabline
Plug 'ap/vim-buftabline'

" Editorconfig support
Plug 'editorconfig/editorconfig-vim'

" Language Support
" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'rhysd/npm-debug-log.vim'
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'cdata/vim-tagged-template'
Plug 'burnettk/vim-angular'

" HTML
Plug 'othree/html5.vim'

" CSS
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }

" Nginx
Plug 'chr4/nginx.vim'

call plug#end()
