set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive' " Git wrapper
Plugin 'vim-airline/vim-airline' " Makes status bar pretty
Plugin 'Valloric/YouCompleteMe' " Code completion suggestions
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-sensible'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mileszs/ack.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion' " easy word motion
Plugin 'junegunn/goyo.vim' " distraction free
Plugin 'amix/vim-zenroom2'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
syntax on
colorscheme badwolf 
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tabs are spaces
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
filetype indent on " load filetyple-specific indent files
set wildmenu
set lazyredraw
set showmatch

set incsearch " search as character are entered
set hlsearch " highlight matches

" turn off search highlight
nnoremap <leader><space> :nolsearch<CR>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" More natural split moving
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set guifont=Monaco:h12

" Nerd tree toggle
map <C-n> :NERDTreeToggle<CR> 

" turn off word wrapping
set nowrap

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ctrlp_working_path_mode = 'ra'

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.yardoc\|fixtures\|coverage\|public$|log\|tmp$',
        \ 'file': '\.so$\|\.dat$|\.DS_Store$'
        \  }

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

set backspace=2   " Backspace deletes like most programs in insert mode

set nobackup
set nowritebackup
set noswapfile
set ruler

" Use Ag over grep
set grepprg=ag\ --nogroup\ --nocolor
