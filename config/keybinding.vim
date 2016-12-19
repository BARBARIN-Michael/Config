nnoremap <Leader>v :vsp<CR>
nnoremap <silent> <Leader>p :call <SID>ToggleCopyPasteMode()<CR>

nnoremap <silent> <Leader>l :call <SID>ToggleNumberMode()<CR>

function! s:ToggleNumberMode()
	if &number
		set nonumber
		set norelativenumber
		set foldcolumn=0
		if exists(":NumbersDisable")
			:NumbersDisable
		endif
		set mouse=
	else
		set nonumber
		set norelativenumber
		set foldcolumn=1
		if exists(":NumbersEnable")
			:NumbersEnable
		endif
		set mouse=a
	endif
endfunction

function! s:ToggleCopyPasteMode()
	if &list
		set nolist
		set paste
		if &number
			set nonumber
			set norelativenumber
			set foldcolumn=0
			if exists(":NumbersDisable")
				:NumbersDisable
			endif
		endif
		set mouse=
	else
		set list
		set nopaste
		set mouse=a
	endif
endfunction


autocmd VimEnter * call <SID>CreateKeybindings()

function! s:CreateKeybindings()
	if exists(":CtrlP")
		nnoremap <Leader>o :CtrlP<CR>
	endif
endfunction
"nnoremap <C-LEFT> :bn<CR>
"
map <S-L> :bn<CR>⌇
map <S-H> :bp<CR>⌇
map <S-K> :buffers<CR>⌇
map <S-J> :Bclose<CR>


nmap <C-L> :tabnext<CR>⌇
nmap <C-H> :tabprevious<CR>⌇
nmap <C-K> :tabnew<CR>⌇
nmap <C-J> :tabclose<CR>

nnoremap <Leader>n :NERDTreeToggle<CR>
