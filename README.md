This has a submodule to bootstrap "Vundle" plugin management, so:

	cd $HOME
	git clone --recursive git@github.com:nweisenfeld/vim-config.git .vim
	mv -f .vim .vim.hold
	mv -f .vimrc .vimrc.hold
	ln -s .vim/vimrc .vimrc
	vim +PluginInstall

you're good to go!

