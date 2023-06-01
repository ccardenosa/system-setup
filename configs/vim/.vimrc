set hlsearch
set background=dark
set ts=2
set sw=2
set expandtab
set background=dark
set backspace=indent,eol,start
syntax on

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" turn line numbers on
" set number

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
"set nobackup
"set nowb
"set noswapfile

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
" map tm :tabm<Space>
" map <leader>tg :tabprevious<cr>
map tg :tabprev<CR>
map th :tabfirst<CR>
map tl :tablast<CR>
map tt :tabedit<Space>

"
" ctags optimization
"
set autochdir
set tags=tags;
nmap <F8> :!ctags --recurse=yes --exclude=.git<CR>
"nmap <F8> :!ctags --recurse=yes --exclude=.git --exclude=BUILD --exclude=.svn --exclude=vendor/* --exclude=node_modules/* --exclude=db/* --exclude=log/*<CR>
"map <F8> :!ctags -f  ./tags -R --c++-kinds=+p --fields=+iaS --extra=+q ./<CR>

"
" Plugins
"
"
" vim-go plugin: [See https://linuxhandbook.com/install-vim-plugins/]
"
call plug#begin()

"Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'
"Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'

call plug#end()

"
" Python settings
"
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

filetype plugin indent on
nnoremap ty :!python3 %

