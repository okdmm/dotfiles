" leader key
let mapleader = "\<Space>"
let maplocalleader = ','

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

" 検索後カーソル位置を中心に
nnoremap n nzzzv
nnoremap N Nzzzv

" :noh
nnoremap <silent> <C-l> :<C-u>noh<CR><C-l>

" quickfix閉じる
nnoremap <Leader>a :cclose<CR>

" buffer移動
nnoremap <silent> <C-k> :bprevious<CR>
nnoremap <silent> <C-j> :bnext<CR>

"window
nnoremap sp :<C-u>split<CR>
nnoremap vs :<C-u>vsplit<CR>

" file検索を楽に アクティブバッファの相対パスの挿入を楽
cnoremap <expr> %% getcmdtype() == ':'? expand('%:h').'/' : '%%'

" text object を便利に 多分キーボード自体のmappingを変えルカも
" cut
nnoremap c8 ci(
nnoremap c[ ci[
nnoremap c{ ci{
nnoremap c2 ci"
nnoremap c7 ci'
nnoremap c@ ci`

nnoremap ca8 ca(
nnoremap ca[ ca[
nnoremap ca{ ca{
nnoremap ca2 ca"
nnoremap ca7 ca'
nnoremap ca@ ca`

" delete
nnoremap d8 di(
nnoremap d[ di[
nnoremap d{ di{
nnoremap d2 di"
nnoremap d7 di'
nnoremap d@ di`

nnoremap da8 da(
nnoremap da[ da[
nnoremap da{ da{
nnoremap da2 da"
nnoremap da7 da'
nnoremap da@ da`

" yank
nnoremap y8 yi(
nnoremap y[ yi[
nnoremap y{ yi{
nnoremap y2 yi"
nnoremap y7 yi'
nnoremap y@ yi`

nnoremap ya8 ya(
nnoremap ya[ ya[
nnoremap ya{ ya{
nnoremap ya2 ya"
nnoremap ya7 ya'
nnoremap ya@ ya`

" visual
nnoremap v8 vi(
nnoremap v[ vi[
nnoremap v{ vi{
nnoremap v2 vi"
nnoremap v7 vi'
nnoremap v@ vi`

nnoremap va8 va(
nnoremap va[ va[
nnoremap va{ va{
nnoremap va2 va"
nnoremap va7 va'
nnoremap va@ va`

" 自動で閉じる
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>
" <Leader>で閉じない
inoremap {<Leader>  {
inoremap [<Leader>  [
inoremap (<Leader>  (
inoremap "<Leader>  "
inoremap '<Leader>  '
inoremap `<Leader>  `

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

" すでにterminalが開かれていたらそれを開く
nnoremap <silent> <LocalLeader>t :call TermOpen()<CR>

" 保存
nnoremap <silent> <Leader>w :w<CR>
