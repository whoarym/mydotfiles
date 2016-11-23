""" My VIM Config
""" =============
""" How to install on new machine:
""" 1. Get Vundle from GitHub
"""    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
""" 2. Install plugins to vim:
"""  - run VIM
"""  - run :PluginInstall in VIM or $ vim +PluginInstall +qall
""" 3. External requirements:
"""  - git for Vundle
"""  - exuberant-ctags for tagbar

""" *************
""" Vundle START
""" *************
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

""" **************
""" Plugins START
""" **************
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
""" *************
""" Plugins END
""" *************
call vundle#end()
filetype plugin indent on
""" ***********
""" Vundle END
""" ***********



""" *************************
""" Local configuration START
""" *************************

" Encoding settings
set encoding=utf-8
set fileformat=unix
scriptencoding utf-8


" Solarized color theme
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" Configure status line
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component': {
  \   'readonly': '%{&filetype=="help"?"":&readonly?"x":""}',
  \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
  \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
  \ },
  \ 'component_visible_condition': {
  \   'readonly': '(&filetype!="help"&& &readonly)',
  \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
  \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
  \ }
  \ }

" File options
set noswapfile
set nobackup
set hidden

" Search settings
set showmatch
set hlsearch
set ignorecase
set incsearch

" Editing options
set backspace=indent,eol,start
set autoindent
set nostartofline
set shiftwidth=4
set softtabstop=4
set expandtab

" Editor GUI options
set number
set nowrap
set listchars=tab:→→,extends:>,precedes:<,trail:~
set list
set showmatch
set colorcolumn=100

" Tabs
set showtabline=2
nnoremap <ESC>[A :tabnew<CR>     " Ctrl-Up
nnoremap <ESC>[D :tabp<CR>       " Ctrl-Left
nnoremap <ESC>[C :tabn<CR>       " Ctrl-Right

" Splits
set splitbelow
set splitright

" Editing mode mappings
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :TagbarToggle<CR>
nnoremap <F9> :set list!<CR>
nnoremap <F10> :set expandtab!<CR>
nnoremap <F11> :set wrap!<CR>
nnoremap <F12> :set number!<CR>

""" ***********************
""" Local configuration END
""" ***********************
