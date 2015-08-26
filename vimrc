set nocompatible 
set ruler
syntax enable
source ~/.vim/vim-vundle
set background=dark
colorscheme wombat256mod
" dj compatibility ;-)
autocmd FileType cpp set ts=5 | set sw=5 | set expandtab
autocmd FileType python set ts=4 | set sw=4 | set expandtab
augroup filetypedetect
	au! BufRead,BufNewFile *.mro		setfiletype martian
augroup END
autocmd FileType martian set ts=4 | set sw=4 | set expandtab
augroup prewrites
	autocmd!
	autocmd BufWritePre,FileWritePre *.mro :%s/\s\+$//e
	autocmd BufWritePre,FileWritePre *.cc :%s/\s\+$//e
	autocmd BufWritePre,FileWritePre *.h :%s/\s\+$//e
augroup END
