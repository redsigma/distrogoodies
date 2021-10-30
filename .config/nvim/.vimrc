syntax on
set mouse=a

" change max memory for highlight
set mmp=5000

" tab to spaces and identation
set tabstop=2 shiftwidth=2 expandtab

" show trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace
match ExtraWhitespace /\s\+$/

" remove trailing spaces on write
autocmd BufWritePre * :%s/\s\+$//e
set wrap linebreak

" show line wrapping '> \"
set showbreak=>\ \

" discard search highlight with esc
nnoremap <silent> <esc> :nohlsearch<CR>

