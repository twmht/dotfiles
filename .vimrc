" pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
""" Basic Setting(s)
set mouse=nv
set ffs=unix,mac,dos
set number
set showmode
set nocompatible
set cursorline
set wildmenu
set wildmode=list:full
filetype on
filetype plugin indent on
syntax on
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
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

""" taglist settings
map <F2> <ESC>:TlistToggle<CR>
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 0 " split to the right side of the screen
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 0 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 0 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 40

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


" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
set tags+=~/.vim/tags/opencv
set tags+=~/.vim/tags/opencv2
" " build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" " OmniCppComplete, Use CTRL-X CTRL-O in Insert mode to start the completion
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" " automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

""" neocomplcache
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
" open the snippet
imap <silent><C-l> <Plug>(neocomplcache_snippets_force_expand)
smap <silent><C-l> <Plug>(neocomplcache_snippets_force_expand) 

"jump to next placeholder
imap <silent><C-k> <Plug>(neocomplcache_snippets_force_jump)
smap <silent><C-k> <Plug>(neocomplcache_snippets_force_jump)

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"


" auto compile using makefile
function! HasError(qflist)
    for i in a:qflist
        if i.valid == 1
            return 1
        endif
    endfor
    return 0
endfunction

function! MakeAndRun()
    make
    if HasError( getqflist() )
        cl
    else
        !./a.out
    endif
endfunction

map <F5> :w<CR>:call MakeAndRun()<CR>
" next position in quicklist
map <C-N> :cn<CR> 
" previous position in quicklist
map <C-P> :cp<CR>
" NERDTree
let NERDTreeWinPos  =  "left"  "where NERD tree window is placed on the screen "
let NERDTreeWinSize = 31 "size of the NERD tree
let NERDChristmasTree=1
"autocmd vimenter * NERDTree "  open a NERDTree automatically
autocmd vimenter * if !argc() | NERDTree | endif " open a NERDTree automatically when vim starts up if no files were specified
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "close vim if the only window left open is a NERDTree
"nnoremap <silent> <F6> :NERDTree<CR>
"let  NERDTreeShowBookmarks=1 "一直顯示書籤
"let  NERDTreeChDirMode=2 "打開書籤時，自動將Vim的pwd 設為打開的目錄，如果你的項目有tags文件，你會發現這個命令很有幫助
