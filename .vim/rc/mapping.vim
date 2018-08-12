"insertでのescをjjに
inoremap <silent> jj <ESC>
" 折り返しじに表示行単位で移動
nnoremap j gj
nnoremap k gk
"buffer移動を楽に
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" file検索を楽に アクティブバッファの相対パスの挿入を楽
cnoremap <expr> %% getcmdtype() == ':'? expand('%:h').'/' : '%%'

" 自動で閉じ括弧
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
