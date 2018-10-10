execute pathogen#infect()

" Spaces And Tabs {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set autoindent
set nocindent
set nosmartindent
set indentexpr=
" }}}

" UI Configuration {{{
set number
set showcmd
" set cursorline " TODO colors
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set ruler
set splitbelow
set splitright

" autocmd vimenter * NERDTree # To enable NERDTree upon vim startup
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:terraform_fmt_on_save=1
let g:terraform_align=1

" Below found at https://www.reddit.com/r/vim/comments/1mzefb/what_does_your_statusline_look_like/
set fillchars=stl:―,stlnc:—,vert:│,fold:۰,diff:·

highlight folded       cterm=bold ctermbg=none ctermfg=5 " TODO: colors
highlight vertsplit    cterm=none ctermbg=none ctermfg=9
highlight statusline   cterm=none ctermbg=none ctermfg=9
highlight statuslinenc cterm=none ctermbg=none ctermfg=9
highlight specialkey   cterm=none ctermbg=none ctermfg=1
highlight matchparen   cterm=none ctermbg=none ctermfg=5
highlight wildmenu     cterm=bold ctermbg=none ctermfg=3
highlight visual       cterm=bold ctermbg=7    ctermfg=none
highlight user1        cterm=none ctermbg=none ctermfg=3
" }}}

" Searching {{{
set incsearch
set hlsearch
" }}}

" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent
" }}}

" Custom Movements {{{
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
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
"nnoremap <leader>z :GundoToggle<CR>
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
nnoremap <leader>sz :source ~/.zshrc<CR>
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
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>ip :call FindIPAddresses()<CR>
nnoremap <leader>sw :call TrimWhitespace()<CR>
" }}}

" Custom Functions {{{
function! FindIPAddresses()
  normal /\(\d\+\.\)\{3\}\d\{1,3\}
endfunction

function! TabOrComplete()
  if col('.')>1 && strpart(getline('.'), col('.')-2, 3) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=TabOrComplete()<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
" }}}

" Copying {{{
set clipboard=unnamed
" }}}

" vim:foldmethod=marker:foldlevel=0
