filetype off

if &compatible
 set nocompatible
endif

set encoding=utf-8
source ~/dotfiles/.vim/scripts/dein.vim

"option
source ~/dotfiles/.vim/rc/options.vim

" util
" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

"key map
source ~/dotfiles/.vim/rc/mapping.vim

"filetypeの検出
filetype plugin on
