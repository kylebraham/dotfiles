syntax on
set number
set t_Co=256



set laststatus=2
set ttimeoutlen=50
set nocompatible         " be iMproved, required
filetype off             " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim




call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
A
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'

call vundle#end()
