#!/bin/bash -e


create_symlink() {
  local src=$1
  local dst=${2:-$HOME}

  ln -sf "$src" "$dst"
  echo "Symlink created: $dst -> $src"
}

create_symlink "$PWD/.dircolors"

create_symlink "$PWD/git/.gitconfig"
create_symlink "$PWD/tmux/.tmux.conf"
create_symlink "$PWD/vim/.vimrc"

create_symlink "$PWD/bash/.bashrc"
create_symlink "$PWD/bash/.bash_variables"
source "$HOME/.bashrc"

create_symlink "$PWD/ssh/config" "$HOME/.ssh"

