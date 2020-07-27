# My configs

## NeoVIM
Personal `init.vim` configuration file for generic programming tasks with sane defaults, like:
* syntax highlight
* simple files support (vim tabs keybindings and nerdtree)
* simple source code navigation (with tagbar)
* replace tabs with spaces
* neat interface:
 * line numbers
 * row length margin at 120 symbols
 * statusbar
 * vim-fugitive integration

### Installation instruction:
  * Place `init.vim` in `$HOME/.config/nvim/`
  * Install vim-plug running
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
  * Make plugins folder: `mkdir $HOME/.config/nvim/vim-plug`
  * Run neovim
  * Execute `:PlugInstall`

### Used plugins
* vim-plug (as plugin manager)
* lightline.vim
* vim-fugitive
* nerdtree
* tagbar

### External dependencies
* git (for vim-plug & vim-fugitive)
* exuberant ctags (for tagbar)

### Additional keybindings
* Tabs:
  * `<F7>` for previous tab
  * `<F8>` for new tab
  * `<F9>` for next tab
* Generic mappings
  * `<F3>` toggle NERDTree
  * `<F4>` toggle tagbar
  * `<F9>` toggle invisible chars
  * `<F6>` toggle tabs replacement
  * `<F11>` toggle word wrapping
  * `<F12>` toggle show line numbers
