nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>c :JavaCorrect<cr>
"use default Taglist instead of Eclim, avoid problem
"if the current file is in a Eclipse project, open project tree automatically
let g:EclimProjectTreeAutoOpen=1 
let g:EclimProjectTreeExpandPathOnOpen=1
