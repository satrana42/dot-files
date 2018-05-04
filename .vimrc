" plugins
" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'd11wtq/ctrlp_bdelete.vim'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'roxma/vim-tmux-clipboard'
Plugin 'haya14busa/incsearch.vim'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-easytags'

if v:version > 704
  Plugin 'Valloric/YouCompleteMe'
endif

call vundle#end()
filetype plugin indent on

" cscope
source ~/.vim/plugin/cscope_maps.vim
set nocscopeverbose

" plugin settings
" theme
colorscheme seoul256

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_paste=1
let g:airline_theme='minimalist'

" nerdtree
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" syntastic
let g:syntastic_error_symbol = 'E'
let g:syntastic_warning_symbol = "W"

" tags
nmap <silent> <leader>p :TagbarToggle<CR>
let g:tagbar_autoclose=2
" set tags=./tags
" let g:easytags_events = ['BufReadPost', 'BufWritePost']
" let g:easytags_async = 1
" let g:easytags_dynamic_files = 1
" let g:easytags_resolve_links = 1
" let g:easytags_suppress_ctags_warning = 1

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" general settings
" fzf
set rtp+=~/.fzf

" spaces over tabs
set tabstop=2 shiftwidth=2 expandtab

" line numbers
set number

" line length marker
set colorcolumn=80

" syntax
syntax on

" show commands
set showcmd

" indentation
set autoindent
set smartindent

" splits
autocmd VimResized * wincmd =
nnoremap <C-w>_ :split<CR>
nnoremap <C-w>\| :vsplit<CR>
