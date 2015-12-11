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
		set number
		set relativenumber
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
let g:ctrlp_working_path_mode = 'c'
"nnoremap <C-LEFT> :bn<CR>
"
map <S-RIGHT> :bn<CR>⌇
map <S-LEFT> :bp<CR>⌇
map <S-UP> :buffers<CR>⌇
map <S-DOWN> :Bclose<CR>


nmap <C-RIGHT> :tabnext<CR>⌇
nmap <C-LEFT> :tabprevious<CR>⌇
nmap <C-UP> :tabnew<CR>⌇
nmap <C-DOWN> :tabclose<CR>

nnoremap <Leader>n :NERDTreeToggle<CR>
