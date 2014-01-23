" setup the pathogen_disabled variable so we can disable certain plugins
" depending on if we're in a GUI or not
let g:pathogen_disabled = []

if has('gui_running')
	" Show NERDTree on startup
	let g:nerdtree_tabs_open_on_console_startup=1

	" Show line numbers, since copy & paste doesn't grab them
	set number
endif

" Let pathogen manage our plugins
execute pathogen#infect()

" bump our gui font
set guifont=Monaco:h13

" Dark Solarized
set background=dark
colorscheme solarized

filetype plugin on
filetype indent on
syntax enable
set ai

set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
set laststatus=2

set modeline modelines=2

" use longer flake8 line lengths
let g:flake8_max_line_length=99

" when saving .py files call Flake8
autocmd BufWritePost *.py call Flake8()

autocmd BufRead,BufNewFile *.pp set ft=puppet
autocmd BufRead,BufNewFile *.c set ts=4 sw=4 et sts=4
autocmd BufRead,BufNewFile *.h set ts=4 sw=4 et sts=4
autocmd BufRead,BufNewFile *.m set ts=4 sw=4 et sts=4
autocmd BufRead,BufNewFile *.py set ts=4 sw=4 et sts=4
autocmd BufRead,BufNewFile *.js set ts=4 sw=4 et sts=4
autocmd BufRead,BufNewFile *.css set ts=4 sw=4 et sts=4
autocmd BufRead,BufNewFile *.less set ts=4 sw=4 et sts=4
autocmd BufRead,BufNewFile *.html set ts=4 sw=4 et sts=4
autocmd BufRead,BufNewFile *.tpl set ts=4 sw=4 et sts=4 ai
autocmd BufRead,BufNewFile *.xml set ts=4 sw=4 et sts=4 ai
autocmd BufRead,BufNewFile *.rb set ts=2 sw=2 et sts=2 ai
