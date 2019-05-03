" leader key
let mapleader = "\<Space>"
let maplocalleader = ","

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
nnoremap G Gzz

" indent
nnoremap > >>
nnoremap < <<

" Act like D and C
nnoremap Y y$

" reyank
nnoremap <Leader>p "0p
vnoremap <Leader>p "0p

" Better x
nnoremap x "_x

" <C-n>: next history.
cnoremap <C-n> <Down>
" <C-p>: previous history.
cnoremap <C-p> <Up>
" 
cnoremap vb vert sb 

" 検索後カーソル位置を中心に
nnoremap n nzzzv
nnoremap N Nzzzv

" :noh
nnoremap <silent> <C-l> :<C-u>noh<CR><C-l>

" quicfix
nnoremap <Leader>a :cclose<CR>
nnoremap <silent> [q :cprevious<CR>zz
nnoremap <silent> ]q :cnext<CR>zz
nnoremap <silent> [Q :<C-u>cfirst<CR>zz
nnoremap <silent> Q] :<C-u>clast<CR>zz

" buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" easily split vsplit
nnoremap s <Nop>
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
" <LocalLeader>で閉じない
inoremap {<LocalLeader>  {
inoremap [<LocalLeader>  [
inoremap (<LocalLeader>  (
inoremap "<LocalLeader>  "
inoremap '<LocalLeader>  '
inoremap `<LocalLeader>  `


" 内に自動で改行
inoremap {<CR> {}<LEFT><CR><C-o>O
inoremap (<CR> ()<LEFT><CR><C-o>O
inoremap [<CR> []<LEFT><CR><C-o>O

" 閉じタグのほかん
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype php inoremap <buffer> </ </<C-x><C-o>
augroup END

" terminalを便利に
nnoremap <silent> <LocalLeader>t :<C-u>call TermOpen()<CR>
nnoremap <silent> <LocalLeader>q :<C-u>call TermKill()<CR>

" :write
nnoremap <silent> <Leader>w :<C-u>w<CR>
" :source $MYVIMRC
nnoremap <silent> <Leader>vl :<C-u>source $MYVIMRC<CR>
" :edit $MYVIMRC
nnoremap <silent> <Leader>ve :<C-u>edit $MYVIMRC<CR>

