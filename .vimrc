" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
"set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

syntax enable
colorscheme desert
set background=dark
set t_Co=256
set hlsearch
highlight Comment ctermfg=DarkCyan

set showcmd

set number
set cursorline
set title
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
"set virtualedit=all
set matchpairs& matchpairs+=<:>

set ignorecase
set smartcase
set incsearch
set wrapscan
set showmatch
