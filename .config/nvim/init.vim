" vim-plug
" Plugins will be downloaded to ~/.vim/plugged
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
" Plug 'taglist.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'neomake/neomake'
Plug 'davidhalter/jedi-vim'
Plug 'apalmer1377/factorus'


" Polyglot: syntax highlighting for common languages
Plug 'sheerun/vim-polyglot'

" Fugitive: git wrapper
Plug 'tpope/vim-fugitive'

call plug#end()

" Fundamental settings
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
filetype on
filetype plugin on
filetype plugin indent on
syntax on
" Some useful settings
set smartindent
set expandtab         "tab to spaces
set tabstop=2         "the width of a tab
set shiftwidth=2      "the width for indent
set foldenable
set foldmethod=indent "folding by indent
set foldlevel=99
set ignorecase        "ignore the case when search texts
set smartcase         "if searching text contains uppercase case will not be ignored
" Lookings
set number           "line number
set cursorline       "hilight the line of the cursor
set cursorcolumn     "hilight the column of the cursor
set nowrap           "no line wrapping
colorscheme NeoSolarized   


set background=dark "use the light version of gruvbox
" change the color of chars over the width of 80 into blue
" (uncomment to enable it)
"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
"
set colorcolumn=100

" Plugin settings
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)


let g:jedi#use_splits_not_buffers = "left"
