function! Open_md_link()

    " Move cursor to markdown link position, in brackets
    execute "normal! vi(o\<Esc>"

    " Get the full path and invoke external program to open it
    execute "!start" g:app_path expand('<cfile>:p', '\')

endfunction

" You can change external program path here
let g:app_path = ""

" Define shortcut
if !mapcheck("<Space>o", "n")
    nnoremap <silent> <Space>o :call Open_md_link()<CR>
endif
