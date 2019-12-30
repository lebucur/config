set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    "Plugin 'scrooloose/nerdtree'

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line

set number	
set linebreak	
set showbreak=+++	
set textwidth=100	
set showmatch	
set virtualedit=all	
set visualbell 

set hlsearch
hi Search ctermbg=DarkRed
hi MatchParen cterm=bold  ctermbg=black ctermfg=white

syntax on
 
set smartcase	
set ignorecase	
set incsearch	

set nocompatible

set autoindent	
set cindent	
set expandtab	
set shiftwidth=4 
set smartindent	
set smarttab	
set softtabstop=4
 
set ruler	
 
set undolevels=1000 
set backspace=indent,eol,start 

"nnoremap n :call HighlightNearCursor()<CR> n 
"nnoremap N N :call HighlightNearCursor()<CR>
nnoremap t :call HighlightWordNearCursor()<CR>
nnoremap T :set hlsearch!<CR>

function HighlightNearCursor()
    match Todo /\k*\%#\k*/
    let s:highlightcursor=1
endfunction
 
function HighlightWordNearCursor()
   if !exists("s:highlightcursor")
       match Todo /\k*\%#\k*/
       let s:highlightcursor=1
   else
       match None
       unlet s:highlightcursor
   endif
endfunction
 

hi CursorLine cterm=NONE ctermbg=52 ctermfg=NONE 
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
"set cursorline
