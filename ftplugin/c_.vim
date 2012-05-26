" " OmniCppComplete, Use CTRL-X CTRL-O in Insert mode to start the completion
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
set tags+=~/.vim/tags/opencv
set tags+=~/.vim/tags/opencv2
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
