syntax on
filetype indent plugin on
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set background=dark
set number
set clipboard=unnamedplus

set incsearch
set hlsearch 
map <F8> :noh

map <C-h> <Esc>
imap <C-h> <Esc>

noremap d h
noremap h j
noremap t k
noremap n l
noremap j d








function! TestPython()
    if ! exists("g:compilefile")
        let g:compilefile = expand("%")
    endif
    execute "!python " . g:compilefile
endfunction 
nmap <C-t> :call TestPython()<cr>
