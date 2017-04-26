"""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
syntax on " Enable syntax highlight

" Set to auto read when a file is changed from the outside
" set autoread

set nocompatible              " be iMproved, required
filetype off                  " required



"""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins List
"""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The NERD tree
Plugin 'scrooloose/nerdtree'

" ctrlp.vim
Plugin 'kien/ctrlp.vim'

" colorschemes
Plugin 'chriskempson/base16-vim'

" MOAR COLORSCHEMES
Plugin 'flazz/vim-colorschemes'

" syntax highlight for JS (ES6)
Plugin 'othree/yajs.vim'

" JS Syntax/Indent related Plugin (required for JSX highlight)
Plugin 'pangloss/vim-javascript'

" .editorconfig
Plugin 'editorconfig/editorconfig-vim'

" emmet
Plugin 'mattn/emmet-vim'

" automatic insertion of matching pairs (for `(`, `[`, etc...)
Plugin 'jiangmiao/auto-pairs'

" surround
Plugin 'tpope/vim-surround'

" vim-go
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
" Put your non-Plugin stuff after this line



"""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Related Configs
"""""""""""""""""""""""""""""""""""""""""""""""

" Open NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
" NERDTree
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" enable emmet for JSX
let g:user_emmet_jsx = 1

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " only show files that are not ignored by git

" enable syntax highlight for JSX on .js files
let g:jsx_ext_required = 0



"""""""""""""""""""""""""""""""""""""""""""""""
" => Filetype Related Configs
"""""""""""""""""""""""""""""""""""""""""""""""

" vim thinks that json is javascript
au BufRead,BufNewFile *.json set filetype=json
let g:vim_json_syntax_conceal = 0

" display handlebars templates as html
au BufNewFile,BufRead *.handlebars set filetype=html



"""""""""""""""""""""""""""""""""""""""""""""""
" => Visual Related Configs
"""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox

" background and theme
set background=dark

" long lines as just one line (have to scroll horizontally)
set nowrap

" 256 colors
set t_Co=256

" line numbers
set relativenumber
set number

" show the status line all the time
set laststatus=2

" toggle invisible characters
set invlist
set list
set listchars=trail:⋅

highlight SpecialKey ctermbg=none guifg=darkgray" make the highlighting of tabs less annoying
hi NonText ctermfg=7 guifg=darkgray

" Remove fill of splits
set fillchars+=vert:\ 

" Make split separator transparent
hi VertSplit ctermbg=NONE guibg=NONE




"""""""""""""""""""""""""""""""""""""""""""""""
" => Keymappings
"""""""""""""""""""""""""""""""""""""""""""""""

" dont use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" really, just dont
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" copy and paste to/from vIM and the clipboard
nnoremap <C-y> +y
vnoremap <C-y> +y
nnoremap <C-p> +P
vnoremap <C-p> +P

" access system clipboard
set clipboard=unnamed

" toggle paste mode with F2
set pastetoggle=<F2>

" swapfiles location
set backupdir=/tmp//
set directory=/tmp//

" make backspace work like most other apps
set backspace=2

" stop comments auto indentation
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" transparente StatusLine
hi StatusLineNC ctermfg=235 ctermbg=237
hi StatusLine ctermfg=235 ctermbg=245
hi EndOfBuffer ctermfg=237 ctermbg=235
hi NonText ctermfg=237 ctermbg=none



"""""""""""""""""""""""""""""""""""""""""""""""
" => StatusLine
"""""""""""""""""""""""""""""""""""""""""""""""

set statusline=%=%f\ %m\ (%l\,\ %L\)\ %P\ 



"""""""""""""""""""""""""""""""""""""""""""""""
" => Indentation
"""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
