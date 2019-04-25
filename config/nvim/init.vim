set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
set nocompatible
set rnu
set ruler
set showcmd
set incsearch
set hlsearch
set showmatch
set mouse=v
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set wildmode=longest,list
set cc=90

" toggle spelling
nnoremap <leader>s :set invspell<CR>

syntax on

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

filetype plugin indent on  " allows auto-indenting depending on file type

Plugin 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'airblade/vim-gitgutter'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nnoremap <C-p> :FZF<CR>

" All of your Plugins must be added before the following line
call vundle#end()
