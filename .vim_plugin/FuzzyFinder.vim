"function IdeFindTextMate()
  "let g:FuzzyFinderOptions.Base.key_open = '<CR>'
  "let g:FuzzyFinderOptions.Base.key_open_split = '<C-j>'
  "exe "FuzzyFinderTextMate"
"endfunction

"function IdeSplitFindTextMate()
  "let g:FuzzyFinderOptions.Base.key_open = '<C-j>'
  "let g:FuzzyFinderOptions.Base.key_open_split = '<CR>'
  "exe "FuzzyFinderTextMate"
"endfunction

"map <silent> <leader>e :call IdeFindTextMate()<CR>
"map <silent> <leader>s :call IdeSplitFindTextMate()<CR>
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent> <leader>sj     :FufBuffer<CR>
nnoremap <silent> <leader>sk     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <leader>sK     :FufFileWithFullCwd<CR>
nnoremap <silent> <leader>ff     :FufFile<CR>
nnoremap <silent> <leader>sl     :FufCoverageFileChange<CR>
nnoremap <silent> <leader>sL     :FufCoverageFileChange<CR>
nnoremap <silent> <leader>s<C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> <leader>sd     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <leader>sD     :FufDirWithFullCwd<CR>
nnoremap <silent> <leader>s<C-d> :FufDir<CR>
nnoremap <silent> <leader>sn     :FufMruFile<CR>
nnoremap <silent> <leader>sN     :FufMruFileInCwd<CR>
nnoremap <silent> <leader>sm     :FufMruCmd<CR>
nnoremap <silent> <leader>su     :FufBookmarkFile<CR>
nnoremap <silent> <leader>s<C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> <leader>s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> <leader>bd     :FufBookmarkDir<CR>
nnoremap <silent> <leader>s<C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> <leader>st     :FufTag<CR>
nnoremap <silent> <leader>sT     :FufTag!<CR>
nnoremap <silent> <leader>s<C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> <leader>s,     :FufBufferTag<CR>
nnoremap <silent> <leader>s<     :FufBufferTag!<CR>
vnoremap <silent> <leader>s,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> <leader>s<     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> <leader>s}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> <leader>s.     :FufBufferTagAll<CR>
nnoremap <silent> <leader>s>     :FufBufferTagAll!<CR>
vnoremap <silent> <leader>s.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> <leader>s>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> <leader>s]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> <leader>sg     :FufTaggedFile<CR>
nnoremap <silent> <leader>sG     :FufTaggedFile!<CR>
nnoremap <silent> <leader>so     :FufJumpList<CR>
nnoremap <silent> <leader>sp     :FufChangeList<CR>
nnoremap <silent> <leader>sq     :FufQuickfix<CR>
nnoremap <silent> <leader>sy     :FufLine<CR>
nnoremap <silent> <leader>sh     :FufHelp<CR>
nnoremap <silent> <leader>se     :FufEditDataFile<CR>
nnoremap <silent> <leader>sr     :FufRenewCache<CR>
