version 6.0

" Vim-Plug Manager Auto Installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'chiel92/vim-autoformat'
" Plug 'valloric/youcompleteme'
Plug 'lervag/vimtex'
Plug 'tmhedberg/SimpylFold'
Plug 'chrisbra/csv.vim'
Plug 'mechatroner/rainbow_csv'
Plug 'morhetz/gruvbox'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'nvie/vim-flake8'
Plug 'vim-airline/vim-airline'
Plug 'hdima/python-syntax'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'wesq3/vim-windowswap'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'
Plug 'benmills/vimux'
Plug 'gilsondev/searchtasks.vim'
Plug 'honza/vim-snippets'
" Plug 'sirver/ultisnips'
" Plug 'jupyter-vim/jupyter-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'jpalardy/vim-slime'
Plug 'yuttie/comfortable-motion.vim'
Plug 'kkpmw/vim-sendtowindow'
Plug 'airblade/vim-gitgutter'
Plug 'quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'rrethy/vim-illuminate'
Plug 'ambv/black'
Plug 'mg979/vim-visual-multi'
call plug#end()

if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <C-U> u
map Q gq
nmap gx <Plug>NetrwBrowseX
vmap gx <Plug>NetrwBrowseXVis
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set backup
set display=truncate
set fileencodings=ucs-bom,utf-8,default,latin1
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0
set history=1000
set hlsearch
set ignorecase
set incsearch
set langnoremap
set nolangremap
set nrformats=bin,hex
set ruler
set scrolloff=5
set showcmd
set smartcase
set smartindent
set ttimeout
set ttimeoutlen=100
set viminfo='20,\"50
set wildmenu
set number
set smarttab
set foldmethod=indent
set foldlevel=99


" Make a tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

" csv.vim configs
" filetype plugin on
let g:rbql_backend_language='python'
let g:rbql_use_system_python=1

" Enable highlighting of the current line
set cursorline

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Theme and Styling
if !exists("g:syntax_on")
    syntax enable
endif

set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
" set t_Co=256
" let g:solarized_termcolors=256

" Tmux and Slime Configurations
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:hybrid_custom_term_colors = 1
let g:airline_solarized_bg='dark'
let g:hybrid_reduced_contrast = 1

" PyDocstring Configuration
let g:pydocstring_formatter = 'sphinx'
autocmd FileType python setlocal tabstop=4 shiftwidth=4 smarttab expandtab
nmap <silent> <C-_> <Plug>(pydocstring)

" Jupyter-Vim Configuration
" Always use the same virtualenv for vim, regardless of what Python
" environment is loaded in the shell from which vim is launched
" let g:vim_virtualenv_path = '/home/mmtechslv/.virtualenvs/vim_virtualenv'
" if exists('g:vim_virtualenv_path')
"     pythonx import os; import vim
"     pythonx activate_this = os.path.join(vim.eval('g:vim_virtualenv_path'), 'bin/activate_this.py')
"     pythonx with open(activate_this) as f: exec(f.read(), {'__file__': activate_this})
" endif

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
	nnoremap <Up>    :resize +2<CR>
	nnoremap <Down>  :resize -2<CR>
	nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif

" LocalLeader
nnoremap <SPACE> <Nop>
let maplocalleader = " "

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>t :stop<CR>

" " UltiSnip
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" 
" vim: set ft=vim :
