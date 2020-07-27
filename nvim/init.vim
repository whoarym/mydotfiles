"""My Config
""" =============
""" How to install on new machine:
""" 1. Install vim-plug by instruction: https://github.com/junegunn/vim-plug#unix-linux
""" 2. Make dir for plugins: $ mkdir -p ~/.config/nvim/vim-plug
""" 3. Place this file in ~/.config/nvim/init.vim
""" 4. Run nvim & command :PlugInstall inside
""" 5. External requirements:
"""  - git for vim-plug & vim-fugitive
"""  - exuberant-ctags for tagbar

""" vim-plug section START
call plug#begin('~/.config/nvim/vim-plug')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

call plug#end()
""" vim-plug section END

"""Configure status line (lightline plugin) START
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
"""Configure status line (lightline plugin) END

"""Local configuration START
" Generic
set nocompatible
set encoding=utf-8
scriptencoding utf-8
syntax enable

" File options
filetype plugin indent on
set fileformat=unix
set noswapfile
set nobackup
set hidden

" Search settings
set showmatch
set hlsearch
set ignorecase
set incsearch

" Editing settings
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
set colorcolumn=120

" Tabs
set showtabline=2
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabnew<CR>
nnoremap <F9> :tabn<CR>

" Splits
set splitbelow
set splitright

" Editing mode mappings
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :TagbarToggle<CR>
nnoremap <F6> :set list!<CR>
nnoremap <F10> :set expandtab!<CR>
nnoremap <F11> :set wrap!<CR>
nnoremap <F12> :set number!<CR>

"""Local configuration END

