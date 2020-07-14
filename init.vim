" ######################################################################################################################
" ### Neovim Config                                                                                                  ###
" ### Author: Alexander Rhoda <alexanderbrhoda@gmail.com                                                             ###
" ### gtihub username: abrhoda                                                                                       ###
" ######################################################################################################################

call plug#begin('~/.config/nvim/plugged')
" Nerdtree file browser
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }
" Nerdtree git file
Plug 'Xuyuanp/nerdtree-git-plugin'
" Lightline 
Plug 'itchyny/lightline.vim'
" Git changes showed on line numbers
Plug 'airblade/vim-gitgutter'
" Git branch info for lightline
Plug 'itchyny/vim-gitbranch'
"Code completeion via coc.nvim 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Color Scheme
Plug 'morhetz/gruvbox'
call plug#end()

set encoding=utf-8                          " The encoding displayed.
set fileencoding=utf-8                      " The encoding written to file.
scriptencoding utf-8                        " Set utf-8 as default script encoding

set shell=/bin/zsh                          " Setting shell to zsh
set number                                  " Line numbers on
set showmode                                " Always show mode
set showcmd                                 " Show commands as you type them
set cmdheight=1                             " Command line height
set pumheight=10                            " Completion window max size
set noswapfile                              " New buffers will be loaded without creating a swapfile
set hidden                                  " Enables to switch between unsaved buffers and keep undo history
set clipboard=unnamed                       " Allow to use system clipboard
set lazyredraw                              " Don't redraw while executing macros (better performance)
set showmatch                               " Show matching brackets when text indicator is over them
set ignorecase                              " Ignore case by default
set smartcase                               " Make search case sensitive only if it contains uppercase letters
set wrapscan                                " Search again from top when reached the bottom
set nohlsearch                              " Don't highlight after search

if has('persistent_undo')
  set undofile undodir=~/.config/nvim/tmp/undo//
endif

set list                                    " Show listchars by default
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:·
set showbreak=↪
set shiftwidth=2                            " Autoindent width
set tabstop=2                               " Set tab = 2 spaces
set expandtab                               " Indents to TABSTOP spaces when tab is used

filetype plugin on
filetype indent on

if has('nvim')
  let g:loaded_python_provider=1                        " Disable python 2 interface
  let g:python_host_skip_check=1                        " Skip python 2 host check
  let g:python3_host_prog='/usr/bin/python3'            " Set python 3 host program
  set inccommand=nosplit                                " Live preview of substitutes and other similar commands
endif

let $LANG = 'en_US'

if has("termguicolors")                     " set true colors
  set termguicolors
endif

syntax on
colorscheme gruvbox

" NERDTree
" -----------------------------------------------------
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinSize=30
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowHidden=1
let g:NERDTreeHighlightCursorline=0
let g:NERDTreeRespectWildIgnore=1

" Gitgutter settings 
" -----------------------------------------------------
let g:gitgutter_map_keys=0
let g:gitgutter_max_signs=9999
let g:gitgutter_sign_added='+'
let g:gitgutter_sign_modified='~'
let g:gitgutter_sign_removed='-'
let g:gitgutter_sign_modified_removed='~'
let g:gitgutter_sign_removed_first_line='-'

" Lightline settings
" -----------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'tab': {
      \   'active': [ 'filename' ],
      \   'inactive': [ 'filename' ]
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename' ], ['gitbranch'] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'filetype', 'fileencoding', 'fileformat' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"HELP":&readonly?"RO":""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&readonly)'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" Plug settings
let g:plug_timeout=20

" Keymappings
" -----------------------------------------------------
nmap <F2> :NERDTreeToggle<CR>
nmap <leader>i <Plug>(coc-codeaction)<CR>
