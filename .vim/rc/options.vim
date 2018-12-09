"構文ごとに色を表示
syntax on
" colorshceme
colorscheme hybrid
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
"保存じの文字コード
set fileencoding=utf-8
"□や●が崩れるのを防ぐ
set ambiwidth=double
"カーソルの位置表示
set ruler
" カーソルを相対位置で表示"
set relativenumber
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
"crash予防
set synmaxcol=200
