set incsearch
set encoding=utf-8
set nocompatible 
set ruler
syntax enable
source ~/.vim/vim-vundle
set background=dark
colorscheme wombat256mod
" dj compatibility ;-)
if has("autocmd")
	  filetype plugin indent on
endif
autocmd FileType rust compiler cargo 
autocmd FileType rust setl makeprg=make
"autocmd FileType rust SyntasticCheck off
"autocmd FileType cpp set ts=5 | set sw=5 | set expandtab | set makeprg=cbuild
autocmd FileType cpp set ts=5 | set sw=5 | set expandtab | set makeprg=./crdMake
autocmd FileType python set ts=4 | set sw=4 | set expandtab
augroup filetypedetect
	au! BufRead,BufNewFile *.mro		setfiletype martian
augroup END
autocmd FileType martian set ts=4 | set sw=4 | set expandtab
"augroup prewrites
"	autocmd!
"	autocmd BufWritePre,FileWritePre *.mro :%s/\s\+$//e
"	autocmd BufWritePre,FileWritePre *.cc :%s/\s\+$//e
"	autocmd BufWritePre,FileWritePre *.h :%s/\s\+$//e
"augroup END

" FixWhite
command FW :%s/\s\+$//e
command HW :/\s\+$

function! BuildExec()
	let base = expand('%:p:t:r')
	exec ':make -j20 '.base
endfunction

command B call BuildExec()

set statusline+=%F

set sw=4 ts=4 expandtab

source ~/.vim/a.vim
