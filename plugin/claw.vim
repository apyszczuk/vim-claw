" Claw - Cursor Line Active Window
"
" Author:     Artur Pyszczuk <apyszczuk@gmail.com>
" License:    Same terms as Vim itself
" Website:    https://github.com/apyszczuk/vim-claw

if exists('g:loaded_claw')
    finish
endif
let g:loaded_claw = 1

augroup CursorLineActiveWindow
    autocmd!

    function s:exec(cmd)
        if &diff == 0
            execute a:cmd
        endif
    endfunction

    autocmd WinEnter,BufWinEnter *  :call s:exec("set cursorline")
    autocmd WinLeave *              :call s:exec("set nocursorline")
augroup END
