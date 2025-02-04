#!/bin/bash -e

create_symlink() {
  local src=$1
  local dst=${2:-$HOME}

  ln -sf "$src" "$dst"
  echo "Symlink created: $dst -> $src"
}

set_up_git() {
  local src="$PWD/git/.gitconfig"
  local dst="/mnt/c/Users/Shadow"
  
  # Git on Windows won't be able to access '.gitconfig' located in WSL.
  # The file must be placed on the Windows host, not within WSL.
  cp -f "$src" "$dst"

  echo "$src has been copied to $dst" 
}

create_symlink "$PWD/.dircolors"

set_up_git

create_symlink "$PWD/tmux/.tmux.conf"
create_symlink "$PWD/vim/.vimrc"

create_symlink "$PWD/bash/.bashrc"
create_symlink "$PWD/bash/.bash_variables"
source "$HOME/.bashrc"

create_symlink "$PWD/ssh/config" "$HOME/.ssh"

