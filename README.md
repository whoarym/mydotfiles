# My configs

## VIM
Personal `.vimrc` configuration file for generic programming tasks with sane defaults, like:
* syntax highlight
* simple files support (vim tabs keybindings and nerdtree)
* simple source code navigation (with tagbar)
* replace tabs with spaces
* neat interface:
 * solarized dark colortheme
 * line numbers
 * row length margin at 100 symbols
 * statusbar
 * vim-fugitive integration

### Installation instruction:
  * Place `.vimrc` in `$HOME`
  * Install Vundle in `$HOME/.vim/...` running:

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
  * Run vim
  * Execute `:PluginInstall`

### Used plugins
* Vundle
* solarized colortheme
* lightline.vim
* vim-fugitive
* nerdtree
* tagbar

### External dependencies
* git (for Vundle)
* exuberant ctags (for tagbar)

### Additional keybindings
* Tabs:
  * `<Ctrl-Up>` for new tab
  * `<Ctrl-Left` for previous tab
  * `Ctrl-Right` for next tab
* Generic mappings
  * `<F3>` toggle NERDTree
  * `<F4>` toggle tagbar
  * `<F9>` toggle invisible chars
  * `<F10>` toggle tabs replacement
  * `<F11>` toggle word wrapping
  * `<F12>` toggle show line numbers
