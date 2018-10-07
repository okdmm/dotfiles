filetype off
filetype plugin indent off

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

filetype plugin indent on
