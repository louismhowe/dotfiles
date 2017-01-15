" Settings (try :help 'cindent')
set nocompatible
"set backspace=2 shiftwidth=2 tabstop=8 expandtab
set backspace=2 shiftwidth=4 tabstop=4 expandtab
"set backspace=2 shiftwidth=8 tabstop=8 noexpandtab
set notitle
set smarttab
set smartindent
set autoindent
set cindent
set nofoldenable
set modeline modelines=1
set ruler
"set norelativenumber
"set number
set wrap
set noeol
"set autochdir
set gdefault
set incsearch
set hlsearch
set noignorecase
set showmatch
set noexrc
set wildmode=longest,list,full
set wildmenu
" Shortcuts to enter/exit insert/normal mode
"nnoremap <Space> i
"noremap <C-Space> a
"noremap <C-Space> <Esc>
"inoremap jk <Esc>
"inoremap kj <Esc>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j<C-w>_
nnoremap <C-k> <C-w>h<C-w>_
nnoremap <C-l> <C-w>l

" Navigation in insert mode
imap <C-h> <C-o>h
imap <C-j> <C-g>j
imap <C-k> <C-g>k
imap <C-l> <C-o>l

" Smart paste
nnoremap <C-v> "+P=']
inoremap <C-v> <C-o>"+P<C-o>=']

" NERD Tree setup
"au vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <C-Space> :SrcExplToggle<CR>

" File types/tags
filetype plugin indent on
syntax on
all
set tags=tags;

" See :help ft-bash-syntax
let g:is_bash=1

" Path setup
set path=.,/usr/local/include,/usr/include
set path+=/usr/include/c++/*
if has("macunix")
  set path+=/System/Library/Frameworks/Foundation.framework/Headers
  set path+=/System/Library/Frameworks/Kernel.framework/Headers
endif

"match ErrorMsg '\s\+$'

" Autocommands
"au BufRead * if search('-*- C++ -*-', 'nw') | setlocal ft=cpp | endif
au! BufNewFile,BufRead Makefile.*   set filetype=make
au! BufNewFile,BufRead *.dasc       set filetype=c
au! BufNewFile,BufRead *.ll         set filetype=llvm
au! BufNewFile,BufRead *.td         set filetype=tablegen
au! BufNewFile,BufRead *.hsc        set filetype=haskell
au! BufNewFile,BufRead *nginx*.conf set filetype=nginx

" Pathogen bundle management
runtime! autoload/pathogen.vim
if exists("*pathogen#infect")
  call pathogen#infect()
endif
