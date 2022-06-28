let mapleader = " "
let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH

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
set undodir=C:/Users/ASUS/AppData/Local/nvim/undodir
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

call plug#begin("C:/Users/ASUS/AppData/Local/nvim/plugged")

" Colorscheme
Plug 'tomasiser/vim-code-dark' " vscode style colorscheme

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

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf binaries
Plug 'junegunn/fzf.vim' " fzf port for vim

" Auto Completeion, lsp, etc
Plug 'neoclide/coc.nvim'  " Auto Completion
Plug 'akinsho/flutter-tools.nvim' " better flutter development on vim
Plug 'SirVer/ultisnips' " Snippet engine
Plug 'honza/vim-snippets' " Snippet loader
Plug 'natebosch/dartlang-snippets' " Snippet for dartlang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " go development on vim
Plug 'dart-lang/dart-vim-plugin' "  plugin pack
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highliting

set encoding=UTF-8
call plug#end()

" general uses
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <leader>qq :wq<CR>
nnoremap <silent> <leader>fc :e C:/Users/ASUS/AppData/Local/nvim/init.vim<CR>

" for pasting stuff
nnoremap <silent> <leader>y :set nopaste<CR>
nnoremap <silent> <leader>v :set paste<CR>

" NvimTree mappings
nnoremap <silent> <leader>e :NvimTreeFocus<CR>
nnoremap <silent> <leader>o :NvimTreeClose<CR>

" buftabline mappings
nnoremap <silent> <A-.> :bnext<CR>
nnoremap <silent> <A-,> :bprev<CR>
nnoremap <silent> <A-c> :bdelete<CR>
nnoremap <silent> <A-[> :bfirst<CR>
nnoremap <silent> <A-]> :blast<CR>

" lua stuff
lua require('retro.vui')
lua require('retro.vux')
lua require('retro.ven')

" for multiple cursor
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

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

set fillchars+=vert:│

" toggleterm setting
" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><leader>\\ <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<leader>\\ will open terminal 2
nnoremap <silent><leader>\\ <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><leader>\\ <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" autocompletionn / lsp / etc stuff
nnoremap <leader>5 :FlutterDevices<CR>
nnoremap <leader>6 :CocCommand flutter.create<CR>
nnoremap <silent> <C-e> :FlutterOutlineOpen<CR>
nnoremap <silent> <C-o> :FlutterOutlineToggle<CR>
nnoremap <silent> <leader>fq :FlutterQuit<CR>

let g:dart_style_guide = 4
let g:dart_format_on_save = 0

" Coc
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

let g:coc_global_extensions = [
    \ 'coc-flutter',
    \ 'coc-snippets',
    \ 'coc-vimlsp',
    \ 'coc-go'
    \ ]

" colorscheme stuff
colorscheme codedark
