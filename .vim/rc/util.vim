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
      let number = term_list()[0]
      " sb means splitbuffer
      execute "sb" . number
    else
      " windowないの開かれているterminalにフォーカス
      call win_gotoid(win_findbuf(term_list()[0])[0])
    endif
  endif
  " set nosplitbelow
  set nosb
endfunction
