if &compatible
 set nocompatible
endif

let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1

let $CACHE = expand('~/.cache')

if !isdirectory(expand($CACHE))
  call mkdir(expand($CACHE), 'p')
endif

" Add the dein installation directory into runtimepath
set pyxversion=3
set encoding=utf-8
let s:dein_dir = finddir('dein.vim', '.;')
if s:dein_dir == '' || &runtimepath !~ '/dein.vim'
  if s:dein_dir == '' && &runtimepath !~ '/dein.vim'
    let s:dein_dir = expand('$HOME/.dein')
                \. '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute ' set runtimepath^=' . substitute(
              \ fnamemodify(s:dein_dir, ':p'), '/$', '', '')
endif

let s:path = expand('$CACHE/dein')
if !dein#load_state(s:path)
  finish
endif

" setting start
call dein#begin(s:path)

" toml!
let g:rc_dir    = expand('~/dotfiles/.vim/scripts/.dein/')
let s:toml      = g:rc_dir . '/dein.toml'
let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

call dein#load_toml(s:toml,      {'lazy': 0})
call dein#load_toml(s:lazy_toml, {'lazy': 1})

call dein#end()
call dein#save_state()

" auto check
if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable
