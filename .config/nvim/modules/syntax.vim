" http://vimdoc.sourceforge.net/htmldoc/syntax.html

augroup SyntaxGroup
    autocmd!
    autocmd Syntax * syn match MyTodo /\v<(FIXME|URGENT|NOTE|TODO|OPTIMIZE|IGNORE|SKIP)/
          \ containedin=.*Comment,vimCommentTitle

    autocmd Filetype python set tabstop=4 shiftwidth=4 expandtab
augroup END

hi def link MyTodo Todo

" Customize vim-polyglot
let g:python_highlight_all = 0
let g:python_highlight_builtins = 0
let g:python_highlight_builtin_objs = 1
let g:python_highlight_builtin_funcs = 1
let g:python_highlight_builtin_types = 1
let g:python_highlight_exceptions = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_string_format = 1
let g:python_highlight_string_templates = 1
let g:python_highlight_indent_errors = 1
let g:python_highlight_space_errors = 1
let g:python_highlight_doctests = 1
let g:python_print_as_function = 1
let g:python_highlight_func_calls = 1
let g:python_highlight_class_vars = 1
let g:python_highlight_operators = 0
