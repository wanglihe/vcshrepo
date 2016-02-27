source $VIMRUNTIME/vimrc_example.vim

set nu
"set guifont=DejaVu\ Sans\ Mono\ Bold\ 14
set cindent 
"set guifont=Monaco\ 15
set encoding=utf-8
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set cc=81 
set vb t_vb=

colorscheme desert "torte ron darkblue evening
set fileencodings=utf-8,cp936,iso-8859-1,utf-16
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

autocmd FileType c,cpp,java,php,xml,erlang,python,tex autocmd BufWritePre <buffer> :%s/\s\+$//e

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
"call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
"NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'vim-scripts/taglist.vim' " 2.5   Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets.vim'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'kien/ctrlp.vim'
"NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
"NeoBundleCheck
