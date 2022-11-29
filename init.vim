call plug#begin()
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'romgrk/barbar.nvim'
	Plug 'preservim/nerdcommenter'
	Plug 'alexghergh/nvim-tmux-navigation'
	Plug 'neovim/nvim-lspconfig'
	Plug 'leafOfTree/vim-svelte-plugin'
	Plug 'preservim/nerdtree'
call plug#end()

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Move to previous/next
nnoremap <leader>< <Cmd>BufferPrevious<CR>
nnoremap <leader>>  <Cmd>BufferNext<CR>
" Close buffer
nnoremap <leader>c <Cmd>BufferClose<CR>
" Close commands
"  :BufferCloseAllButCurrent


set showmode
set wildignore=*/node_modules/*
set list
set listchars=eol:¬,tab:▸-,trail:~,extends:>,precedes:<
set number
set cursorline
set nobackup
set noswapfile
set undolevels=1000
set smartcase
set copyindent
set colorcolumn=80
set autoindent
" set hlsearch " sometimes this gets annoying
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

nnoremap <Leader>e <cmd>NERDTreeToggle<cr>

let NERDTreeShowHidden=1
