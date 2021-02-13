execute pathogen#infect()
syntax on
set showmode
set wildignore=*/node_modules/*
set list
set listchars=eol:¬,tab:▸-,trail:~,extends:>,precedes:<
set number
set relativenumber
set cursorline
set nobackup
set noswapfile
set undolevels=1000
set shiftwidth=4
set tabstop=4
set smartcase
set copyindent
set colorcolumn=80
highlight ColorColumn ctermbg=4
set autoindent
set hlsearch
set incsearch
let g:netrw_banner = 0
let g:netrw_list_hide = '^\./$'
let g:netrw_hide = 1
let g:netrw_liststyle = 3
" UNCOMMENT BELOW FOR NERDTREE WINDOW
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 15
" augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
" augroup END
