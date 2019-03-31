" すでにterminalが開かれていたらそれを開く
function! TermOpen() abort
  " set splitbelow
  set sb
  if empty(term_list())
    execute "terminal"
  else 
    " 現在のwindow内に開かれてるか確認
    if empty(win_findbuf(term_list()[0]))
      " もしなければ現在のbufferから水平分割して開く
      let bufnumber = term_list()[0]
      " sb means splitbuffer
      execute "sb" . bufnumber
      call term_setsize(bufnumber, 18, 0)
    else
      " windowないの開かれているterminalにフォーカス
      call win_gotoid(win_findbuf(term_list()[0])[0])
    endif
  endif
  " set nosplitbelow
  set nosb
endfunction

" terminalを閉じる
"function! TermClose() abort
"  if !empty(term_list())
"    call win_gotoid(win_findbuf(term_list()[0])[0])
"    " execute "wincmd" . "c" ."\<CR>"
"  endif
"endfunction

function! TermKill() abort
  if !empty(term_list())
    let bufnumber = term_list()[0]
    execute "bd!" . bufnumber
    "call term_sendkeys(buf,"exit\<CR>")
  endif
endfunction

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow


" grepでriggrepを使う 
if executable('rg')
    let &grepprg = 'rg --vimgrep --hidden'
    set grepformat=%f:%l:%c:%m
endif
