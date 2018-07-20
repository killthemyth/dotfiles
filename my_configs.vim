 set nu
 set pastetoggle=<F2>
 colorscheme morning

 "Mapping in insert mode
 imap jj <Esc>

 "Mapping quit to QQ
 map QQ :qall!<Enter>

 "Fast quit and save from normal and insert mode
 :map <C-X> <ESC>:q<CR>
 :imap <C-X> <ESC>:q<CR>

 "mapping : to ;
 nore ; :

 hi Search cterm=NONE ctermfg=grey ctermbg=blue

 set nofoldenable
 set list
 set listchars=tab:>-
