"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
"let g:SuperTabDefaultCompletionType = "context"
" Supertab settings
" supertab + eclim == java win
let g:SuperTabDefaultCompletionTypeDiscovery = [
\ "&completefunc:<c-x><c-u>",
\ "&omnifunc:<c-x><c-o>",
\ ]
let g:SuperTabLongestHighlight = 1
