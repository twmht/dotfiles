let python_highlight_all = 1
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
set foldmethod=indent
set foldlevel=99
"type :make to get the syntax errors, use :cnext, to move to next error
"<F5> is mapped to execute the current script.
"setlocal makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"map<buffer> <F5> :w<Esc>:!python %
map<buffer> <F5> :w<Esc>:call RunScript()<CR>
map<buffer> <C-N> :cn<CR> 
map<buffer> <C-P> :cp<CR>
"That will make to use a 4 spaces for you tabstop (only visually), it avoids
"wrapping your code and will add a bottom scrollbar
setlocal tabstop=4
setlocal nowrap
setlocal go+=b

"""quick list setting
" Do make with different makeprg settings.
" Error lists from each makeprg are combined into one quickfix list.
function! HasError(qflist)
    for i in a:qflist
        if i.valid == 1
            return 1
        endif
    endfor
    return 0
endfunction

function! RunScript()
    !python %
    if HasError( getqflist() )
        "echo printf("Have %d errors", len(getqflist()))
        cl
    endif
endfunction
