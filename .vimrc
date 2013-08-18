 
"set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Twinside/vim-cuteErrorMarker'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-surround'
" vim-scripts repos
Bundle 'SQLComplete.vim'
Bundle 'dbext.vim'
"Bundle 'HTML-AutoCloseTag'
Bundle 'MartinLafreniere/vim-PairTools'
Bundle 'indent-motion'
Bundle 'othree/html5-syntax.vim'
Bundle 'Visual-Mark'
"Bundle 'mbbill/echofunc'
Bundle 'mtth/locate.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'LStinson/TagmaBufMgr'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'mattn/zencoding-vim'
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
colorscheme wombat256

""" Backup Setting(s)
"set backup
"set backupdir=$HOME/.vim/backup
set nobackup
"gnuplot
au BufNewFile,BufRead *.gnu set filetype=gnuplot

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
map <F8> :set hls! < Bar> set hls?<CR>
""" Status Bar Setting(s)
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set laststatus=2 
let g:Powerline_symbols = 'fancy'


"for dbext
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=gm2547881:dbname=library'
map <leader>l :DBListTable<CR>

"""for TagmaBufMgr
nnoremap bn1 :buffer 1<cr>
nnoremap bn2 :buffer 2<cr>
nnoremap bn3 :buffer 3<cr>
nnoremap bn4 :buffer 4<cr>
nnoremap bn5 :buffer 5<cr>
nnoremap bn6 :buffer 6<cr>
nnoremap bn7 :buffer 7<cr>
nnoremap bn8 :buffer 8<cr>
nnoremap bn9 :buffer 9<cr>
let g:TagmaBufMgrMapChjklbuf = 1
let g:TagmaBufMgrMapChjkl = 0

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

"""for ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_complete_in_comments_and_strings = 1
"""for ultisnips
let g:UltiSnipsExpandTrigger = '<c-e>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

"""for eclim
let g:EclimCompletionMethod = 'omnifunc'
let g:pairtools_samplefile_path = '/home/mht/'
nnoremap ,i :call Indent_after_insert()<CR>
"""for indent motion
function! Indent_after_insert()
    let ind = indent('.')
    normal ,]o
    execute 'normal! ' . ind . 'a '
    startinsert!
endfunction
