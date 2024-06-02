" To get snippets:
" :CocCommand snippets.edit... FOR EACH FILE TYPE

let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-html',
            \ 'coc-tsserver',
            \ 'coc-svelte',
            \ 'coc-solargraph',
            \ 'coc-rust-analyzer',
            \ 'coc-java',
            \ 'coc-css',
            \ 'coc-clangd',
            \ ]

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" stuff from the coc.nvim github
nmap <F2> <Plug>(coc-rename)


