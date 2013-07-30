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
    exe 'make -C '.b:filepath.' f='.b:filename
    if HasError( getqflist() )
        "echo printf("Have %d errors", len(getqflist()))
        cl
    else
        "!./a.out
        exe '!'.b:filepath.'/a.out'
    endif
endfunction

function! MakeAndRunAndTest()
    exe 'make -C '.b:filepath.' f='.b:filename
    if HasError( getqflist() )
        cl
    else
        "!./a.out < test
        exe '!'.b:filepath.'/a.out <test'
    endif
endfunction
let b:filepath=expand('%:p:h') 
let b:filename=expand('%:t')
map <F5> :w<CR>:call MakeAndRun()<CR>
map <C-F5> :w<CR>:call MakeAndRunAndTest()<CR>
" next position in quicklist
map <C-N> :cn<CR> 
" previous position in quicklist
map <C-P> :cp<CR>
