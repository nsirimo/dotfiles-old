
" let g:ale_sign_error = ''
" let g:ale_sign_warning = ''
let g:ale_set_loclist = 0

highlight link ALEWarningSign Directory
highlight link ALEErrorSign WarningMsg
nnoremap <silent> <leader>ne :ALENextWrap<CR>
nnoremap <silent> <leader>pe :ALEPreviousWrap<CR>
nnoremap <silent> <leader>af :ALEFix<CR>
let g:ale_pattern_options = {
                        \  '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
                        \  '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
                        \}

let g:ale_fixers = {
      \   'typescript': ['eslint', 'prettier'],
      \   'typescript.tsx': ['eslint', 'prettier'],
      \   'javascript': ['eslint', 'prettier'],
      \   'javascript.jsx': ['eslint', 'prettier'],
      \   'html': ['prettier'],
      \   'json': ['prettier'],
      \   'scss': ['prettier'],
      \   'css': ['prettier'],
      \   'bash': ['shfmt'],
      \   'zsh': ['shfmt'],
      \   'ruby': ['rubocop'],
      \   'rust': ['rustfmt'],
      \   'elm': ['elm-format'],
      \}

let g:ale_sh_shfmt_options = '-i 2 -ci'
