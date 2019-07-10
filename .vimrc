set nocompatible
set autoindent
set backspace=indent,eol,start
set cmdheight=2
set cursorline
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nolist
set listchars=tab:>-,trail:·,eol:¶
set nocursorcolumn
set expandtab
set nowrap
set number
set numberwidth=4
set ruler
set shiftwidth=2
set showcmd
set tabstop=2
set textwidth=80
set title
set wildmenu
filetype plugin indent on
syntax on

" Set Status Bar
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%2*%{&ff}\ %*            "file format
set statusline +=%3*%Y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%5*%m%r%h%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%5*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%5*0x%04B\ %*          "character under cursor

" Set Status Bar Colors
highlight User1 ctermfg=White ctermbg=DarkGrey
highlight User2 ctermfg=Red ctermbg=DarkGrey
highlight User3 ctermfg=Yellow ctermbg=DarkGrey
highlight User4 ctermfg=Cyan ctermbg=DarkGrey
highlight User5 ctermfg=Black ctermbg=DarkGrey

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" colorscheme darkblue
