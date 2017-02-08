" Required for filetype off
set nocompatible
" Required because vundle adds new filetypes. #176
filetype off
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Utilities
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'terryma/vim-multiple-cursors' " TODO : Needs configuration
Plugin 'Yggdroot/indentLine'
Plugin 'mbbill/undotree'
" Todo, check if EditorConfig core is installed
if v:version >= 740
	Plugin 'SirVer/ultisnips'
endif
Plugin 'kien/rainbow_parentheses.vim'

" 42
Plugin 'roblabla/42vim'

" Misc
Plugin 'scrooloose/syntastic'

" Language plugins
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
call vundle#end()

" Re-enable filetype
filetype plugin indent on
