" Colorscheme
set background=dark
colorscheme base16-monokai


" Vim
let g:indentLine_char = '.'

" Airline, the status line of awesome
" set guifont=Powerline_Consolas:h14:cANSI
let g:airline_theme='base16'
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

if exists(":NERDTree")
"	autocmd VimEnter * call s:actionForOpen()
"	function! s:actionForOpen()
"		NERDTree
"		wincmd l
"	endfunction
"	autocmd BufCreate * call s:addingNewTab()
"	function! s:addingNewTab()
"		if winnr('$') < 2 && exists('t:NERDTreeBufName') == 0
"			NERDTree
"			wincmd l
"		endif
"	endfunction

	" Close vim if only minibufexpl and nerdtree are open
	autocmd WinEnter * call s:closeIfOnlyNerdTreeLeft()
	function! s:closeIfOnlyNerdTreeLeft()
		if (winnr("$") == 1)
			if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
				q
			endif
		end
	endfunction
endif

" UndoTree
" Open to the right
let g:undotree_WindowLayout = 3

" Syntastic
let g:syntastic_c_compiler = 'clang'
let g:syntastic_c_compiler_options = '-Wall -Wextra -Werror'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-Wall -Wextra -Werror'
let g:syntastic_coffee_checkers = ['coffee', 'coffeelint']

" Rainbow Parentheses auto-enable
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"set expandtab
"set list lcs=tab:\.\ 
"set formatlistpat=^\\s*\\(\\d\\+[\\]:.)}\\t\ ]\\|-\\)\\s*
set autoindent
"set smartindent
"set noexpandtab
"set copyindent
"set preserveindent
"set softtabstop=0
"set shiftwidth=4
"set tabstop=4
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('o', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('h', 'green', 'none', 'green', '#151515')
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o     " MacOSX/Linux
