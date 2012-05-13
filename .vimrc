" vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'Twinside/vim-cuteErrorMarker'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-surround'
"Bundle 'cespare/vjde'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'snipmate-snippets'
"Bundle 'garbas/vim-snipmate'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'OmniCppComplete'
Bundle 'Pydiction'
Bundle 'indent-motion'
Bundle 'TabBar'
Bundle 'tir_black'
Bundle 'othree/html5-syntax.vim'
Bundle 'pyflakes.vim'
Bundle 'python-imports.vim'


" My Bundles here:

""" Basic Setting(s)
let mapleader = ","
set mouse=nv
set ffs=unix,mac,dos
set number
set showmode
set nocompatible
set cursorline
set wildmenu
set wildmode=list:longest,full
filetype on
filetype plugin indent on
syntax on
"turn on omnicomplete
set ofu=syntaxcomplete#Complete

"""Basic Mapping Settings(s)
inoremap jj  <ESC>
inoremap {<CR> {<CR><END><CR>}<UP><END>
"""press S to replace the current word with the last yanked text
nnoremap S diw"0P
vnoremap S "_d"0P


" remember last cursor position
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

""" Encoding Setting(s)
set encoding=utf8
set fileencoding=utf8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set termencoding=utf-8

""" Color Scheme Setting(s)
colorscheme tir_black

""" Backup Setting(s)
"set backup
"set backupdir=$HOME/.vim/backup
set nobackup

""" Indent Setting(s)
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
"""for python
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

""" tagbar settings
nnoremap <silent> <F9> :TagbarToggle<CR>


""" Folding Setting(s)
set foldenable
set foldmethod=manual
set foldcolumn=2
"nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

""" Search Setting(s)
set showcmd
set incsearch
set showmatch
"set hlsearch
map <F8> :set hls! < Bar> set hls?<CR>
""" Status Bar Setting(s)
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set laststatus=2 
let g:Powerline_symbols = 'fancy'


" " build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


" NERDTree
let NERDTreeWinPos  =  "left"  "where NERD tree window is placed on the screen "
let NERDTreeWinSize = 31 "size of the NERD tree
let NERDChristmasTree=1
"autocmd vimenter * NERDTree "  open a NERDTree automatically
nnoremap <silent> <F6> :NERDTreeToggle<CR>
let  NERDTreeShowBookmarks=1 "一直顯示書籤
let  NERDTreeChDirMode=2 "打開書籤時，自動將Vim的pwd 設為打開的目錄，如果你的項目有tags文件，你會發現這個命令很有幫助
source ~/.vim_plugin/neocomplcache.vim
source ~/.vim_plugin/FuzzyFinder.vim
