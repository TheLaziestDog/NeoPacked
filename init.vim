" -- [ General ] --

let mapleader = " "

set termguicolors
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=1
set relativenumber
set signcolumn=yes
set noswapfile
set nobackup
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a
set laststatus=2
set noshowmode
set completeopt-=preview " For No Previews
filetype indent on

" -- [ Vim-Plug ] --

call plug#begin()

" Colorscheme
Plug'tomasiser/vim-code-dark' " vscode like theme

" General
Plug 'nvim-lualine/lualine.nvim' " Status bar
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multiple cursor
Plug 'kyazdani42/nvim-tree.lua' " file explorer
Plug 'windwp/nvim-autopairs' " autopairs
Plug 'ap/vim-buftabline' " basic bufferline
Plug 'akinsho/toggleterm.nvim' " terminal
Plug 'nvim-lua/plenary.nvim' " for lua stuff, idk
Plug 'goolord/alpha-nvim' " dashboard
Plug 'norcalli/nvim-colorizer.lua' " colorhighlighter for hex, etc

" Telescope
Plug 'nvim-telescope/telescope.nvim' " fuzzy finder

" Auto Completeion, lsp, etc
Plug 'neoclide/coc.nvim'  " Auto Completion
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highliting

set encoding=UTF-8
call plug#end()

" -- [ Mappings ] --

" -- General --
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <leader>qq :wq<CR>

" -- NvimTree --
nnoremap <silent> <leader>e :NvimTreeFocus<CR>
nnoremap <silent> <leader>o :NvimTreeClose<CR>

" -- Buftabline --
nnoremap <silent> <A-.> :bnext<CR>
nnoremap <silent> <A-,> :bprev<CR>
nnoremap <silent> <A-c> :bdelete<CR>
nnoremap <silent> <A-[> :bfirst<CR>
nnoremap <silent> <A-]> :blast<CR>

" -- Multiple Cursor --
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

" -- [ General Config ] --

" To connect init.lua to init.vim
lua require('retro')

" colorscheme stuff
colorscheme codedark

" for splitting tabs / buffers
set splitbelow splitright

nnoremap <silent> <leader>sd :vsp<CR>
nnoremap <silent> <leader>sa :split<CR>

" Remap splits navigation to just CTRL + hjkl
nnoremap <leader>a <C-w>h
nnoremap <leader>s <C-w>j
nnoremap <leader>w <C-w>k
nnoremap <leader>d <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <A-a> :vertical resize +3<CR>
noremap <silent> <A-d> :vertical resize -3<CR>
noremap <silent> <A-w> :resize +3<CR>
noremap <silent> <A-s> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>ds <C-w>t<C-w>H
map <Leader>sa <C-w>t<C-w>K

" -- [ Plugin Configs ] --

" -- Toggleterm --

" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><leader>\\ <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<leader>\\ will open terminal 2
nnoremap <silent><leader>\\ <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><leader>\\ <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" -- Coc --
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
nnoremap <silent> <C-l> :call CocActionAsync('jumpDefinition')<CR>
