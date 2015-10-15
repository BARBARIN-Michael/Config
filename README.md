mbarbari's vimrc
=================

```
Sur une idee original de https://github.com/roblabla/dot_vim j'ai copie son style si unique :)
Merci Robin pour tout tes loyaux services <3
```
## Clone
```
git clone --recursive https://github.com/mbarbari/Config /tmp/ConfigToInstall
```

## Installation Theme Oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp /tmp/ConfigToInstall/conf_base/myzshrc $HOME/.myzshrc
cp /tmp/ConfigToInstall/conf_base/zshrc $HOME/.zshrc
cp /tmp/ConfigToInstall/conf_base/mbarbari.zsh-theme $HOME/.oh-my-zsh/theme
source $HOME/.zshrc
```

## Installation Vim

```shell
cp /tmp/ConfigToInstall/dotvim $HOME/.vim
ln -s .vim/vimrc .vimrc
vim +PluginInstall
```

## Installation itermColors

Into MACOSX Load file XXX.itermcolors

## Usage

First of all, the leader key is set to the spacebar. This allows the config
to feel consistent under different keyboards (I use a french and an english
keyboard, the ',' key isn't in the same place in both, which feels very weird).

For new vim users : the leader key is a sort of prefix for user-defined
keybindings.

The following keybindings are defined here :

- Normal mode
  - `<Leader>o`: Open a new file using the Ctrl-P plugin. An option get file only repertory directory.
  - `<Leader>v`: Open a new split window.
  - `<C>v`: Open a new split window.
  - `<Leader>n`: Open a NERDTree window..

