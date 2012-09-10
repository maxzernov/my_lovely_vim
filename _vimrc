"set lines number
set number
set relativenumber

set guioptions-=T
filetype plugin on

"solarized colorscheme
syntax enable
set background=dark
colorscheme solarized
"my prefered font for mac
set guifont=Monaco:h14

"tabs etc
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab
set linespace=3

"set search 
"set hlsearch

"folding settings \ft
nnoremap <leader>ft Vatzf

"Open current buffer in firefox - mac specific
abbrev ff :! open -a firefox.app %:p<cr>

"my mapings
nmap ,ev :tabedit $MYVIMRC <cr>
nmap <space> :
"imap ,e <esc>
imap jj <esc>

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

"Behave like IDE
" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

