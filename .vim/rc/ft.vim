autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

if executable('gopls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
        \ 'whitelist': ['go'],
        \ })
endif
