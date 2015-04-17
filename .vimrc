"set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" let Vundle manage Vundle
" required! 
" vim-scripts repos
Plugin 'JessicaKMcIntosh/TagmaBufMgr'
"Plugin 'HTML-AutoCloseTag'
"Plugin 'SQLComplete.vim'
"Plugin 'SirVer/ultisnips'
"Plugin 'dbext.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'MartinLafreniere/vim-PairTools'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Visual-Mark'
Plugin 'airblade/vim-gitgutter'
Plugin 'gmarik/vundle'
Plugin 'honza/vim-snippets'
Plugin 'indent-motion'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'mtth/locate.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'othree/html5-syntax.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
" Plugin 'techlivezheng/vim-plugin-minibufexpl'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline'
" Plugin 'gregsexton/MatchTag'
Plugin 'Valloric/MatchTagAlways'
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
" filetype plugin on
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
let g:Powerline_symbols = 'fancy'


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

nnoremap ,i :call Indent_after_insert()<CR>
"""for indent motion
function! Indent_after_insert()
    let ind = indent('.')
    normal ,]o
    execute 'normal! ' . ind . 'a '
    startinsert!
endfunction

"""for nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"""for javacomplete
"autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"let b:classpath='/home/tumh/android.jar'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" Plugin key-mappings.
imap <C-e>     <Plug>(neosnippet_expand_or_jump)
smap <C-e>     <Plug>(neosnippet_expand_or_jump)
xmap <C-e>     <Plug>(neosnippet_expand_target)

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
"let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
" let the nerdcommenter use a extra space after and before the comment delimeter
let NERDSpaceDelims=1

runtime macros/matchit.vim

let g:TagmaBufMgrMapChjklbuf = 1
let g:TagmaBufMgrMapChjkl = 0
