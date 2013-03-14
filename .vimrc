" vundle
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
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-surround'
" vim-scripts repos
Bundle 'SQLComplete.vim'
Bundle 'dbext.vim'
Bundle "HTML-AutoCloseTag"
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'OmniCppComplete'
"Bundle 'Pydiction'
Bundle 'indent-motion'
"Bundle 'TabBar'
Bundle 'othree/html5-syntax.vim'
"Bundle 'pyflakes.vim'
Bundle 'Visual-Mark'
"Bundle 'mbbill/echofunc'
Bundle 'matchit.zip'
Bundle 'airblade/vim-gitgutter'
Bundle 'bootleq/vim-tabline'
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
"set splitright
"set splitbelow
hi CursorLine cterm=none ctermbg=200 ctermfg=none guibg=darkred guifg=white 
hi CursorColumn cterm=none ctermbg=200 ctermfg=none guibg=darkred guifg=white
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
set completeopt=menuone,menu,longest,preview
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
"""html settings
au FileType xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim

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

"for dbext
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=gm2547881:dbname=library'
map <leader>l :DBListTable<CR>
"for FuzzyFinder
nnoremap <silent> <leader>ff     :FufFile<CR>
nnoremap <silent> <leader>bb     :FufBuffer<CR>
nnoremap <silent> <leader>sk     :FufFileWithCurrentBufferDir<CR>
"""for neocomplcache

"Popup on <TAB>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"

function! s:check_back_space()"{{{
let col = col('.') - 1
return !col || getline('.')[col - 1] =~ '\s'
endfunction"}}
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'java' : $HOME.'/test.txt'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
"inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"


" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-e>  neocomplcache#cancel_popup()
"""this line should below line number-41, or it is useless
imap <expr><CR> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.java = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"""end for neocomplcache

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END
