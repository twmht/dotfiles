"set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Twinside/vim-cuteErrorMarker'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
" vim-scripts repos
"Plugin 'SQLComplete.vim'
"Plugin 'dbext.vim'
"Plugin 'HTML-AutoCloseTag'
Plugin 'MartinLafreniere/vim-PairTools'
Plugin 'indent-motion'
Plugin 'othree/html5-syntax.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-bufferline'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'Shougo/unite.vim'
Plugin 'vim-airline'
Plugin 'cilquirm/javacomplete'
Plugin 'Shougo/vimproc.vim'
Plugin 'kshenoy/vim-signature'
call vundle#end()            " required

if match($TERM, "screen")!=-1
  set term=xterm
endif
" Screen-ify an external command.
function InScreen(command)
  return g:GNU_Screen_used ? 'screen '.a:command : a:command
endfunction


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
set cursorcolumn 
set backspace=2
set wrap
set linebreak
set nolist
filetype on
filetype plugin indent on
syntax on
"turn on omnicomplete
set ofu=syntaxcomplete#Complete

"""Basic Mapping Settings(s)
inoremap jj  <ESC>
inoremap {<CR> {<CR><END><CR>}<UP><END>
inoremap = <Space>=<Space>
inoremap == <Space>==<Space>
inoremap != <Space>!=<Space>
inoremap <= <Space><=<Space>
inoremap >= <Space>>=<Space>
inoremap ( ()<Left>
"""press S to replace the current word with the last yanked text
nnoremap S diw"0P
vnoremap S "_d"0P
"""indention
vnoremap > >gv
vnoremap < <gv
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
vnoremap <Tab> >
vnoremap <S-Tab> <
vnoremap <Tab> >gV
vnoremap <S-Tab> <gV
nnoremap gg=G gg=G<C-O><C-O>


" remember last cursor position
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" " automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview
set completeopt=menuone,menu,longest
highlight Pmenu ctermbg = 238 gui = bold

""" Encoding Setting(s)
set encoding=utf8
set fileencoding=utf8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set termencoding=utf-8

""" Color Scheme Setting(s)
"colorscheme wombat256
colorscheme jellybeans

""" Backup Setting(s)
"set backup
"set backupdir=$HOME/.vim/backup
set nobackup
"gnuplot
au BufNewFile,BufRead *.gnu set filetype=gnuplot
au BufNewFile,BufRead *.gradle set filetype=groovy

""" Indent Setting(s)
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

""" tagbar settings
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1

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
map <F8> :set hls! <Bar> set hls?<CR>
""" Status Bar Setting(s)
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set laststatus=2 


"for dbext and SQLComplete
"let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=xxxx:dbname=library'
"map <leader>l :DBListTable<CR>


" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

"""for ycm
let g:ycm_global_ycm_extra_conf ='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_complete_in_comments_and_strings = 1
"""for ultisnips
let g:UltiSnipsExpandTrigger = '<c-e>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

"""for eclim
"let g:EclimCompletionMethod = 'omnifunc'
"
nnoremap ,i :call Indent_after_insert()<CR>
"""for indent motion
function! Indent_after_insert()
    let ind = indent('.')
    normal ,]o
    execute 'normal! ' . ind . 'a '
    startinsert!
endfunction

"""for nerdtree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"""for javacomplete
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
let b:classpath='/home/tumh/android.jar'
"""for navigation of buffers
nnoremap bn1 :buffer 1<cr>
nnoremap bn2 :buffer 2<cr>
nnoremap bn3 :buffer 3<cr>
nnoremap bn4 :buffer 4<cr>
nnoremap bn5 :buffer 5<cr>
nnoremap bn6 :buffer 6<cr>
nnoremap bn7 :buffer 7<cr>
nnoremap bn8 :buffer 8<cr>
nnoremap bn9 :buffer 9<cr>
"""for vim-airline
let g:airline#extensions#whitespace#checks = []
let g:airline#extensions#hunks#enabled = 0
"""for unite.vim
nnoremap <C-p> : Unite file_rec/async<cr>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>y :<C-u>Unite -buffer-name=yanks history/yank<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
