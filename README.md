mbarbari's configuration for Unix terminal
=================

## Install of vim
```
git clone --recursive https://github.com/mbarbari/ConfigTerm $HOME/.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc
```

## Install zsh and oh-my-zshrc
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s $HOME/.vim/zsh/myzshrc $HOME/.myzshrc
ln -s $HOME/.vim/zsh/zshrc $HOME/.zshrc
cp $HOME/.vim/zsh/mbarbari.zsh-theme $HOME/.oh-my-zsh/themes
source $HOME/.zshrc
```

## Install itermColors

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
  - `<S-RIGHT>`, `<S-LEFT>`, `<S-UP>`, `<S-DOWN>`: Move buf right and left, create new buffer, close select buffer.
  - `<C-RIGHT>`, `<C-LEFT>`, `<C-UP>`, `<C-DOWN>`: Move tab right and left, create new tab, close select tab.
  - `<Leader>n`: Open a NERDTree window..
  - `<C-N>`: With selection, target same selection for multiple cursor modification.

This configuration has been created with http://github.com/roblabla/dot_vim
