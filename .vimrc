#### to install vundle
#### git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#### compile you complete me
#### cd ~/.vim/bundle/YouCompleteMe
#### ./install.py


set nocompatible              " be iMproved, required
filetype off                  " required

set number            
set numberwidth=5
set guifont=Menlo:h18 
set showcmd       
set laststatus=2   
set incsearch     " do incremental searching
set hlsearch      " highlight matches
set backspace=2 
set nobackup
set nowritebackup 
set shiftwidth=2
set tabstop=2 
set autoindent
set wrap linebreak
set tw=110	
colorscheme torte
set encoding=utf-8


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'

Plugin 'Lokaltog/powerline'

Plugin 'kien/ctrlp.vim'

Plugin 'jistr/vim-nerdtree-tabs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


map <F1> :NERDTreeToggle<CR>

" Youcompleteme settings
set completeopt=menu    "让Vim的补全菜单行为与一般IDE一致 
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py' 
let g:ycm_error_symbol='>>'  
let g:ycm_warning_symbol='>*' 
"设置跳转的快捷键，可以跳转到definition和declaration  
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR> 




