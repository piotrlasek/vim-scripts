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

" Airline configuration

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'


" date
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>


set ruler
" set spell

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
set noerrorbells visualbell t_vb=
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
    syntax on
    set t_Co=256
    set cursorline
    "colorscheme onehalfdark
    "colorscheme dracula 
    "let g:airline_theme='onehalfdark'
   
    "set background=light
    "colorscheme PaperColor
   "colorscheme github 
   "colorscheme monokai
   "set background=dark
   "set background=light
   "colorscheme solarized8_light_high
   "colorscheme solarized8_dark_high
   
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

"set gfn=Menlo\ for\ Powerline:h11:cEASTEUROPE
set gfn=Consolas:h10:cEASTEUROPE
map <F9> <ESC>:set gfn=Consolas:h9:cEASTEUROPE<CR>
map <F10> <ESC>:set gfn=Consolas:h10:cEASTEUROPE<CR>
map <F12> <ESC>:set gfn=Consolas:h14:cEASTEUROPE<CR>
"set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"set guioptions-=r  "remove right-hand scroll bar [zwój, zwitek, zwit, zawój, rola, spirala, zakrętas, woluta, ślimak] 
set guioptions-=L  "remove left-hand scroll bar

set shell=powershell.exe
set backspace=2

syntax enable

set wrap

" Status line
" set laststatus=2
" set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

imap <F2> <ESC> :w<CR> :!pdflatex.exe paper<CR>
map <F2> :w<CR> :!pdflatex.exe paper<CR>

"map <F2> :w<CR> :!pdflatex.exe %:r<CR>

let g:fnt_types = ['Consolas']
let g:fnt_sizes = [ 10, 18 ]

let g:fnt_index = 0
let g:fnt_size  = g:fnt_sizes[g:fnt_index]

" ---------------------------------------

function! CycleFont()
    let g:fnt_index = (g:fnt_index + 1) % len(g:fnt_types)
    let g:fnt_size  = g:fnt_sizes[g:fnt_index]
call ResetFont()
    endfunction

function! ResetFont ()
    if has('gui_running')
    exe ':set guifont=' . g:fnt_types[g:fnt_index] . ':h' . string(g:fnt_size)
    endif
    endfunction

call ResetFont()

function! FontSizePlus ()
    let g:fnt_size = g:fnt_size + 0.5
call ResetFont()
    endfunction

function! FontSizeMinus ()
    let g:fnt_size = g:fnt_size - 0.5
call ResetFont()
    endfunction

nnoremap <F12> :call FontSizePlus()<cr>
nnoremap <F11> :call FontSizeMinus()<cr>
nnoremap cot :call CycleFont()<cr>
