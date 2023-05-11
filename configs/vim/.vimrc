set tabstop=4
set expandtab
set background=dark
set hlsearch

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
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

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

map <F8> :!ctags -f  ./tags -R --c++-kinds=+p --fields=+iaS --extra=+q ./<CR>

