#!/bin/bash

# Install all homebrew packages inside Brewfile

# Check for Homebrew Installation
if ! which brew > /dev/null; then
  # Install Homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# Update Homebrew
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install everything inside Brewfile
brew bundle

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Remove outdated versions from the cellar.
brew cleanup



#git clone git://github.com/alanhamlett/dotfiles.git ~/dotfiles
#ln -sf ~/dotfiles/.vimrc $HOME/.vimrc
#brew tap universal-ctags/universal-ctags
#brew install --HEAD universal-ctags
# vim +PluginInstall +qall

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# Create the symlinks in $HOME
function link_if_missing() {
  SRC=$1
  DEST=$2

  if ! [ -L $DEST ]; then
    ln -ivs $SRC $DEST
  else
    echo "Skipping, link already exists: $DEST"
  fi
}

link_if_missing $HOME/dotfiles/.bashrc                $HOME/.bashrc
link_if_missing $HOME/dotfiles/.curlrc                $HOME/.bashrc
link_if_missing $HOME/dotfiles/.gitconfig             $HOME/.gitconfig
link_if_missing $HOME/dotfiles/.gitignore             $HOME/.gitignore
link_if_missing $HOME/dotfiles/.tmux.conf             $HOME/.tmux.conf
link_if_missing $HOME/dotfiles/.vimrc                 $HOME/.vimrc

# Install vim plugins using Vundle
vim +PluginInstall +qall