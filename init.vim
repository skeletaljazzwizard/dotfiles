" ######################################################################################################################
" ### Minimal Neovim Config                                                                                          ###
" ### Author: Alexander Rhoda <alexanderbrhoda@gmail.com                                                             ###
" ### gtihub username: skeletaljazzwizard                                                                            ###
" ######################################################################################################################

call plug#begin('~/.config/nvim/plugged')
" Coc intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Sematic cpp highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'
" Color Scheme
Plug 'morhetz/gruvbox'
call plug#end()

set shell=/bin/zsh                          " Setting shell to zsh
set nu rnu                                  " Relativeourceline numbers on
set cmdheight=1                             " Command line height
set noswapfile                              " New buffers will be loaded without creating a swapfile
set nobackup                                " No backup file when overwriting a file
set hidden                                  " Enables to switch between unsaved buffers and keep undo history
set smartcase                               " Make search case sensitive only if it contains uppercase letters
set wrapscan                                " Search again from top when reached the bottom
set nohlsearch                              " Don't highlight after search
set incsearch
set undofile undodir=~/.config/nvim/tmp/undo// "For undoing mistakes :(
set shiftwidth=2                            " Autoindent width
set tabstop=2                               " Set tab = 2 spaces
set expandtab                               " Indents to TABSTOP spaces when tab is used
set termguicolors
set cc=80

syntax on
colorscheme gruvbox

let g:netrw_browse_split=2                  " Open netrw with vertical split
let g:netrw_banner=0                        " Turn off netrw banner
let g:netrw_winsize=25                      " Set netrw window size %
let g:netrw_liststyle=3                     " Start netrw in directory mode

" <leader>pv to toggle project view 
nnoremap <leader>pv :Lex <CR>
