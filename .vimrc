if &compatible
  set nocompatible
endif

"dein
source ~/dotfiles/.vim/scripts/dein.vim

"option
source ~/dotfiles/.vim/rc/options.vim

"filetype
source ~/dotfiles/.vim/rc/ft.vim

" util

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

"key map
source ~/dotfiles/.vim/rc/mapping.vim

filetype plugin indent on
set runtimepath+=~/workspace/vim-amake
