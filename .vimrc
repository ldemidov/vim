set nocompatible
syntax enable
set background=dark
let g:solarized_termcolors=256
set guifont=Hack:h11
colorscheme solarized

set number

vnoremap . :norm.<CR>


" This shows what you are typing as a command.
set showcmd

set autochdir

set incsearch
set hlsearch
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" When I close a tab, remove the buffer
" set nohidden

set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set ruler                     " show the line number on the bar
filetype indent on
filetype plugin indent on
set autoindent smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set tabstop=2                 " 6 spaces


set history=1000
set undolevels=1000
set title

" Turn off annoying error bells
set noerrorbells
set visualbell
set t_vb=

"Status line gnarliness
set laststatus=2
" set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ \ [%l,%v][%p%%]

" Remaps
inoremap jj <Esc>
nnoremap ; :
let mapleader=","
"   Buffer Management
" This allows buffers to be hidden if you've modified a buffer.
" " This is almost a must if you wish to use buffers in this way.
set hidden

" " To open a new empty buffer
" " This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
"
" " Move to the next buffer
nmap <leader>l :bnext<CR>
"
" " Move to the previous buffer
nmap <leader>h :bprevious<CR>
"
" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
"
" " Show all open buffers and their status
nmap <leader>bl :ls<CR>


execute pathogen#infect()
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
