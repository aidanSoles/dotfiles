" Spaces And Tabs {{{
set backspace=indent,eol,start
set autoindent
set smartindent
" }}}

" UI Configuration {{{
set number
set showcmd
filetype plugin indent on
set wildmenu
set lazyredraw
set showmatch
set ruler
set splitbelow
set splitright
syntax on
" }}}

" Searching {{{
set incsearch
set hlsearch
" }}}

" Folding {{{
set foldenable
nnoremap <space> za
set foldmethod=indent
" }}}

" Custom Movements {{{
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
" }}}

" Custom Leader {{{
let mapleader=","
inoremap jj <esc>
" }}}

" Leader Shortcuts {{{
nnoremap <leader>s :mksession<CR>
nnoremap <leader>sf :mksession!<CR>
nnoremap <leader>fi :setlocal foldmethod=indent<CR>
nnoremap <leader>fm :setlocal foldmethod=marker<CR>
nnoremap <leader>r :20winc ><CR>
nnoremap <leader>l :20winc <<CR>
nnoremap <leader>u :res +5<<CR>
nnoremap <leader>d :res -5<<CR>
nnoremap <leader>wq :wqall<CR>
nnoremap <leader>wa :wall<CR>
nnoremap <leader>qa :qall<CR>
nnoremap <leader>sa <esc>ggVG
nnoremap <leader>n :nohlsearch<CR>
nnoremap <leader>tw :call TrimWhitespace()<CR>
nnoremap <leader>sp :set paste<CR>
nnoremap <leader>snp :set nopaste<CR>
" }}}

" Custom Functions {{{
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
" }}}
