execute pathogen#infect() 

" Colors {{{
set background=dark
colorscheme abstract_aidan
set term=screen-256color
syntax enable
" highlight Cursorline ctermbg=Blue
" highlight Normal ctermbg=NONE
" highlight Search ctermbg=129 cterm=NONE
" highlight StatusLine ctermbg=129 
" highlight Todo ctermfg=Red
" TODO
" }}}

" Colors I Like {{{
" abstract
" angr
" atom
" deep-space
" dracula
" gotham
" nord
" TODO: Try out the rest.
" }}}

" Plugins I Like {{{
" nerdtree <- Installed
" nerdtree-git-plugin <- Installed
" syntastic <- Installed
" undotree <- Installed
" vim-airline <- Installed
" vim-airline-themes <- Installed
" vim-terraform <- Installed
" }}}

" Spaces And Tabs {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set autoindent
" }}}

" UI Configuration {{{
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set ruler
set splitbelow
set splitright
" set colorcolumn=80
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd bufenter *.tf* colorscheme abstract
let g:terraform_fmt_on_save=1
let g:terraform_align=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" TODO: Add tmux statusline (https://github.com/edkolev/tmuxline.vim).
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
nnoremap <leader>z :UndotreeToggle<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>sd :SyntasticToggleMode<CR>
nnoremap <leader>se :SyntasticCheck<CR>
" nnoremap <leader>ip :call FindIPAddresses()
" }}}

" Custom Functions {{{
function! FindIPAddresses()
  :execute "normal! g/ub\<CR>"
endfunction

function! TabOrComplete()
  if col('.')>1 && strpart(getline('.'), col('.')-2, 3) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=TabOrComplete()<CR>
" TODO: Add StripTrailingWhitespaces function (https://dougblack.io/words/a-good-vimrc.html).
" TODO: Add dictionary.
" }}}

" Copying {{{
set clipboard=unnamed
" }}}

" vim:foldmethod=marker:foldlevel=0
