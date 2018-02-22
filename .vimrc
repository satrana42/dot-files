" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

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
