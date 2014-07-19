"Instalation
"
"cd
"ln -s home-dir-settings/.vimrc .vimrc
set nu ai si
set expandtab
set hidden
set tabstop=2
set shiftwidth=2
filetype plugin on


nnoremap ;ls :ls<cr>
nnoremap ;lo :!tail -f /var/log/nginx/*log /var/log/php5/*log<cr>
nnoremap ;n :n<cr>
nnoremap ;b :b#<cr>
nnoremap <c-l> :n<cr>
nnoremap <c-h> :b<cr>
nnoremap <c-k> <scroll-up>
nnoremap <c-j> <down>
inoremap <c-l> <right>
inoremap <c-h> <left>
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap ; <esc>A;
inoremap \; ;
nnoremap ;1 :b1<cr>
nnoremap ;2 :b2<cr>
nnoremap ;3 :b3<cr>
nnoremap ;4 :b4<cr>
nnoremap ;5 :b5<cr>
nnoremap ;6 :b6<cr>
nnoremap ;7 :b7<cr>
nnoremap ;8 :b8<cr>
nnoremap ;9 :b9<cr>

"let c = 1
"while c <= 40
"  nnoremap ;c :bc<cr>
"endwhile

execute pathogen#infect()
