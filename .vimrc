"動をvi互換ではなくvimのデフォルトにする
"""""""""""""""""""""""""""""""""""
"file関連を無効
filetype off
if &compatible
 set nocompatible
endif

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/dotfiles/.vim/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/dotfiles/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
"各種オプションの設定

colorscheme hybrid
"""""""""""""""""""""""""""""""""""""
"vimscriptでマルチバイト設定。
scriptencoding utf-8
"クリップボードの設定
set clipboard+=unnamed
"行の表示
set number
"行末の一文字先までカーソルを移動できるように
set cursorline
"バッファが編集でも別ファイルを開けるように
set hidden
"編集中のファイルが編集されたら自動で読み直す
set autoread
"swpfileはいらん
set noswapfile
"undofileはいらん
set noundofile
"文字コードをutf-8に
set encoding=utf-8
"保存じの文字コード
set fileencoding=utf-8
"□や●が崩れるのを防ぐ
set ambiwidth=double
"カーソルの位置表示
set ruler
"comandlineに表示される画面上の行すう
set cmdheight=2
"statuslineを末尾に行目から常に表示
set laststatus=2
"フィアるのパスなど表示
set title
"comandmodeでtabでパスなど補完
set wildmenu
"入力中のコマンドを表示
set showcmd
"検索結果のハイライト表示
set hlsearch
"tab入力を空白に
set expandtab
"インクリサーチをオン
set incsearch
"検索文字列が小文字の場合は大文字と区別せず入力
set ignorecase
"検索文字列が大文字の時は大文字にヒット
set smartcase
"不可視文字の表示
set list
"タブと行のつづきを表示
set listchars=tab:>\ ,extends:<
"対応カッコやブレースを表示
set showmatch
"改行時に前のインデントを保持
set autoindent
"行番号の色
highlight LineNr ctermfg=darkyellow
"改行時にインデントをいい感じに
set smartindent
"tabの間隔
set tabstop=2
"vimが挿入するインデントの幅
set shiftwidth=2
"空白でtabを押した時にshiftwidth分入れる
set smarttab
"カーソルを行頭、行末で止まらないようにする。
set whichwrap=b,s,h,l,<,>,[,]
"構文ごとに色を表示
syntax on
"crash予防
set synmaxcol=200
""""""""""""""""""""""""""""


" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

""""""""""""""""""""""""""""""
" Unite.vimの設定
""""""""""""""""""""""""""""""
"
"" 入力モードで開始する
"let g:unite_enable_start_insert=1
"" バッファ一覧
"noremap <C-P> :Unite buffer<CR>
"" ファイル一覧
"noremap <C-N> :Unite -buffer-name=file file<CR>
"" 最近使ったファイルの一覧
"noremap <C-Z> :Unite file_mru<CR>
"" sourcesを「今開いているファイルのディレクトリ」とする
"noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
"" ウィンドウを分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"" ウィンドウを縦に分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"" ESCキーを2回押すと終了する
"au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
"au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""


" 挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction

""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""
"key map
"""""""""""""""""""""""""""

"insertでのescをjjに
inoremap <silent> jj <ESC>
"折り返しじに表示行単位で移動
nnoremap j gj
nnoremap k gk

"buffer移動を楽に
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" file検索を楽に アクティブバッファの相対パスの挿入を楽
cnoremap <expr> %% getcmdtype() == ':'? expand('%:h').'/' : '%%'

"""""""""""""""""""""""""""""""
" 自動で閉じ括弧
"""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
"filetypeの検出
filetype on
