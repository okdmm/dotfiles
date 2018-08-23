" esc
inoremap <silent> jj <ESC>
vnoremap <C-j><C-j> <ESC>

nnoremap j gj
nnoremap k gk

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"window
nnoremap s <Nop>
nnoremap sp :<C-u>split<CR>
nnoremap vs :<C-u>vsplit<CR>

nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
" file検索を楽に アクティブバッファの相対パスの挿入を楽
cnoremap <expr> %% getcmdtype() == ':'? expand('%:h').'/' : '%%'

" 自動で閉じ括弧
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>

" 閉じタグのほかん
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END
