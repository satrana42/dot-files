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

if v:version > 704
  Plugin 'Valloric/YouCompleteMe'
endif

call vundle#end()
filetype plugin indent on

" cscope
source ~/.vim/plugin/cscope_maps.vim

" fzf
set rtp+=~/.fzf

" spaces over tabs
set tabstop=2 shiftwidth=2 expandtab

" line numbers
set number

" line length marker
set colorcolumn=80

" theme
colorscheme seoul256
