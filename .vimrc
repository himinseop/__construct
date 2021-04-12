"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @himinseop (Minseop Ahn)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" 탐색기 : netrw
" http://www.vim.org/scripts/script.php?script_id=1075
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax
syntax on
" PHP
au BufNewFile,BufRead *.phtml set filetype=php
" HTML
au BufNewFile,BufRead *.tpl set filetype=html
au BufNewFile,BufRead *.volt set filetype=html
" Javascript
" http://www.vim.org/scripts/script.php?script_id=4428
" jQuery
" http://www.vim.org/scripts/script.php?script_id=2416
au BufNewFile,BufRead jquery.*.js set filetype=javascript syntax=jquery
" JSON syntax
" http://www.vim.org/scripts/script.php?script_id=1945
au! BufNewFile,BufRead *.json set filetype=json

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab       " set et : tab = 4 spaces
"set noexpandtab    " set noet  : tab = \t
set number
set cindent "C 스타일의 들여쓰기
"set nocindent
set cinwords=if,else,while,do,for,switch,case,default,foreach
set history=20000
set complete+=k~/.vim/plugin/php_functions
set keywordprg=~/.vim/script/phpman.sh
set fileformat=unix


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 검색된 단어 하이라이트
set hlsearch
nnoremap * *N


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color
" set background=dark " dark|light
" colorscheme evening
" colorscheme candystripe
colorscheme default
" set t_Co=256
set t_md=



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAB
map <TAB> :tabnext<CR>
map <C-TAB> :tabprev<CR>

" 오류 체크
map <C-k> :!php -l %<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagList 설정
nnoremap <silent> <F3> :Tlist<CR>
nnoremap <silent> <F4> :TlistUpdate<CR>:TlistToggle<CR>
let Tlist_Inc_Winwidth=0
let Tlist_Use_Right_Window=1

" Taglist PHP 문법 적용 
let Tlist_Ctags_Cmd = "/usr/bin/ctags"

" http://lucasoman.blogspot.kr/2010/09/vim-php-taglist-and-ctags.html
" set the names of flags
let tlist_php_settings = 'php;c:class;f:function;d:constant'
" close all folds except for current file
let Tlist_File_Fold_Auto_Close = 1 
" make tlist pane active when opened
let Tlist_GainFocus_On_ToggleOpen = 1 
" width of window
let Tlist_WinWidth = 40
" close tlist when a selection is made
let Tlist_Close_On_Select = 1 

" 수정:http://amix.dk/blog/post/19329
map <F4> :TlistToggle<cr>
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP Doc
source ~/.vim/plugin/php-doc.vim
inoremap <C-C> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-C> :call PhpDocSingle()<CR>
vnoremap <C-C> :call PhpDocRange()<CR> 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 오타 수정
ab functino function
ab fn function

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Resize splits more quickly
" https://vim.fandom.com/wiki/Resize_splits_more_quickly
"nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
"nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
