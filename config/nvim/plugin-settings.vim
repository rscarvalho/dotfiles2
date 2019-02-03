let g:deoplete#enable_at_startup = 1

let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript': ['prettier', 'eslint'],
      \ 'javascript.jsx': ['prettier', 'eslint'],
      \ 'css': ['prettier']
      \ }

let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'javascript.jsx': ['eslint']
      \ }

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
" Use a slightly slimmer error pointer
let g:ale_sign_error = '✖'
hi ALEErrorSign guifg=#DF8C8C
let g:ale_sign_warning = '⚠'
hi ALEWarningSign guifg=#F2C38F

" Use ALT-k and ALT-j to navigate errors
nmap <silent> ˚ <Plug>(ale_previous_wrap)
nmap <silent> ∆ <Plug>(ale_next_wrap)
nmap <leader>d <Plug>(ale_fix)

call deoplete#enable()
call deoplete#custom#option('ignore_sources', {
      \ 'typescript': ['buffer']
      \ })

" Map `<tab>` to Deoplete
inoremap <silent><expr> <TAB>
      \ pumvisible()
      \ ? "\<C-n>"
      \ : <SID>check_back_space()
      \    ? "\<TAB>"
      \    : deoplete#mappings#manual_complete()

inoremap <silent><expr> <S-Tab>
      \ pumvisible() ? '<C-p>' : ''

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

" nvim-typescript
let g:nvim_typescript#javascript_support = 1

let g:github_enterprise_urls = ['https://ghe.spotify.net']

let g:lightline = {
      \   'active': {
      \     'left': [ ['mode', 'paste'],
      \               ['gitbranch', 'readonly', 'filename', 'modified'] ]
      \   },
      \   'component_function': {
      \     'gitbranch': 'fugitive#head'
      \   }
      \ }

" AngularJS settings
let g:angular_source_directory = 'source'
