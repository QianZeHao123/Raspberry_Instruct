set number
syntax on
set showmode
set showcmd
set autoindent


inoremap jj <esc>


" Pyhon Code

func SetTitle()
call setline(1, "\# !/usr/bin/python")
call setline(2, "\# -*- coding=utf8 -*-")
call setline(3, "\"\"\"")
call setline(4, "\# @Author: Qian Zehao")
call setline(5, "\# @Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
call setline(6, "\# @Description: ")
call setline(7, "\"\"\"")
normal G
normal o
normal o
endfunc
autocmd bufnewfile *.py call SetTitle()