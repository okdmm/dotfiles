" leader key
let mapleader = "\<Space>"

" escape
inoremap <silent> jj <ESC>
vnoremap <C-j><C-j> <ESC>
inoremap j<Space>     j

" emacs mapping 
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>

" 
nnoremap j gj
nnoremap k gk

" indent
nnoremap > >>
nnoremap < <<

" reyank
nnoremap <Leader>p "0p
vnoremap <Leader>p "0p

" Better x
nnoremap x "_x

" <C-n>: next history.
cnoremap <C-n> <Down>
" <C-p>: previous history;
cnoremap <C-p> <Up>

nnoremap <silent> <C-k> :bprevious<CR>
nnoremap <silent> <C-j> :bnext<CR>

"window
nnoremap sp :<C-u>split<CR>
nnoremap vs :<C-u>vsplit<CR>

" file検索を楽に アクティブバッファの相対パスの挿入を楽
cnoremap <expr> %% getcmdtype() == ':'? expand('%:h').'/' : '%%'

" 自動で閉じる
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>

" 閉じタグのほかん
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype php inoremap <buffer> </ </<C-x><C-o>
augroup END
