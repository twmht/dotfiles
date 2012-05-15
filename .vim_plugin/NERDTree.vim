" NERDTree
let NERDTreeWinPos  =  "left"  "where NERD tree window is placed on the screen "
let NERDTreeWinSize = 31 "size of the NERD tree
let NERDChristmasTree=1
"autocmd vimenter * NERDTree "  open a NERDTree automatically
nnoremap <silent> <F6> :NERDTreeToggle<CR>
let  NERDTreeShowBookmarks=1 "一直顯示書籤
let  NERDTreeChDirMode=2 "打開書籤時，自動將Vim的pwd 設為打開的目錄，如果你的項目有tags文件，你會發現這個命令很有幫助
