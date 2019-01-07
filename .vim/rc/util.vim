" すでにterminalが開かれていたらそれを開く
function! TermOpen() abort
  if empty(term_list())
    execute "terminal"
  else 
    call win_gotoid(win_findbuf(term_list()[0])[0])
  endif
endfunction
