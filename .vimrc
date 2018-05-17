set nu
set wildmenu
set backspace=indent,eol,start
set incsearch ignorecase hlsearch
set nowrap	        " no wrap long lines
set autoindent	    " indent at the same level of the previous line
set shiftwidth=2    " use indents of 2 spaces
set sw=2 ts=2 tabstop=2 softtabstop=2 nosmarttab expandtab

" This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

set hidden
set nocursorline
syntax on
filetype on
filetype plugin on
filetype plugin indent on

" Mapping in insert mode
imap jj <Esc>

" Mapping quit to QQ
map QQ :qall!<Enter>

" Fast quit and save from normal and insert mode
:map <C-X> <ESC>:q<CR>
:imap <C-X> <ESC>:q<CR>

" Mapping save command to C-s, mapping : to ;
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>
nore ; :

execute pathogen#infect()
colorscheme morning












"Automatic set paste to set paste for tmux only
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
