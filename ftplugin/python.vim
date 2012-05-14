let g:PythonAutoAddImports = 1
set foldmethod=indent
set foldlevel=99
"type :make to get the syntax errors, use :cnext, to move to next error
"<F5> is mapped to execute the current script.
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
map <F5> :w<Esc>:!python %
map <C-N> :cn<CR> 
map <C-P> :cp<CR>
"That will make to use a 4 spaces for you tabstop (only visually), it avoids
"wrapping your code and will add a bottom scrollbar
set tabstop=4
set nowrap
set go+=b
"python block
