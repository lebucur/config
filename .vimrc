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
set virtualedit=all	
set cindent





" https://affanindo.github.io/my-vimrc-explained
" URL: http://vim.wikia.com/wiki/Example_vimrc

set encoding=utf-8

" Don't try to be vi compatible (must set first)
set nocompatible

"" Useful mappings
let mapleader=","
let g:mapleader=","

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" " which is the default
map Y y$

"reload file
:nnoremap <leader>r :e<CR>

"easier to acces ;
:nnoremap ; :

" Clear search
nnoremap <leader>/ :let @/=''<cr>

" quitting vim
nnoremap <leader>qq :q!<cr>
nnoremap q :q<cr>

" save
nnoremap <leader>w :w<cr>

" toggle relativenumber
nnoremap <leader>n :set relativenumber!<CR>

" toggle paste/put
set pastetoggle=<leader>p

" ????
set history=1000

" Number of undo levels
set undolevels=1000

" Display extra whitespace
"set list listchars=tab:>.,trail:~,nbsp:<

" reload the config file
nnoremap <leader>v :source ~/.vimrc<CR>

" move vim to background, giving access to the old Shell
" come back with fg command
nnoremap <leader>h :suspend<CR>

" for wrapped lines, it will consider those
nnoremap j gj
nnoremap k gk

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches 
set hlsearch

"search while typing
set incsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

"highlight current line
:hi CursorLine cterm=NONE ctermbg=black guibg=darkred guifg=white

"toggle hi current line
:nnoremap <Leader>c :set cursorline!<CR>

" status bar colors
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" Status line content
" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" Status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

" ??? status line ???
hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
"set cmdheight=2

" Display line numbers on the left
"set number
:set number relativenumber

":augroup numbertoggle
":  autocmd!
":  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
":  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
":augroup END

" Don't redraw while executing macros (performance config)
set lazyredraw

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

"------------------------------------------------------------
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartindent

"highlight matching brace
set showmatch

"You can set this setting with very high number such as 9999 if you prefer the
"cursor to stay on the middle and the screen that move instead (like in Super
"Mario Bros lol! The screen move but the Mario still at the center.)
"highlight matching brace
" Keep n lines off the edges of the screen when scrolling
set scrolloff=4

"use %s/foo/bar instead of %s/foo/bar/g
set gdefault

"wrap lines that are too long
set wrap




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
