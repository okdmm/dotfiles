autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" if executable('golsp')
"   augroup LspGo
"     au!
"     autocmd User lsp_setup call lsp#register_server({
"         \ 'name': 'go-lang',
"         \ 'cmd': {server_info->['golsp', '-mode', 'stdio']},
"         \ 'whitelist': ['go'],
"         \ })
"     autocmd FileType go setlocal omnifunc=lsp#complete
"   augroup END
" endif

if executable('go-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'go-langserver',
        \ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
        \ 'whitelist': ['go'],
        \ })
endif

