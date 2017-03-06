set clipboard=unnamed
set hidden
set nocompatible
set showtabline=0
set cursorline
"set relativenumber
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set showmode
set wildmenu
set tw=70
let $LANG = 'en'
set langmenu=none
:set lines=70

" date
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

"set ruler
"set spell

"set word wrap
set formatoptions=lt
set lbr

imap <F10> <ESC>:NERDTRee<CR>
map <F10> <ESC>:NERDTRee<CR>

imap zz <ESC>:w<CR>
map zz <ESC>:w<CR>
imap :: <ESC>:
imap ;; <ESC>:w<CR> :bprev<CR> 
map ;; :w<CR> :bprev<CR> 
imap '' <ESC>:w<CR> :bnext<CR> 
map '' :w<CR> :bnext<CR> 

map <Tab> <C-w><C-w>

syntax on
" set visualbell
set noerrorbells
imap jj <ESC><ESC>
set nu "line numbers

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8 bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

if has('gui_running')
   "set background=dark
   "set background=light
   "colorscheme solarized8_light_high
   colorscheme solarized8_dark_high
   
   "colorscheme solarized8_dark_flat
   "set background=light
   " colorscheme lucius
   "g:lucius_style='light'
   "LuciusLight
   "colorscheme oxeded
   "colorscheme atom-dark
else
   "colorscheme lucius
   "LuciusLight
endif

"set gfn=Menlo\ for\ Powerline:h9:cEASTEUROPE
set gfn=Consolas:h10:cEASTEUROPE
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar [zwój, zwitek, zwit, zawój, rola, spirala, zakrętas, woluta, ślimak] 
set guioptions-=L  "remove left-hand scroll bar

set shell=powershell.exe
set backspace=2

syntax enable

set wrap

set laststatus=2
set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

imap <F2> <ESC> :w<CR> :!pdflatex.exe paper<CR>
map <F2> :w<CR> :!pdflatex.exe paper<CR>
"map <F2> :w<CR> :!pdflatex.exe %:r<CR>
