#!/bin/bash -e

create_symlink() {
  local src=$1
  local dst=${2:-$HOME}

  ln -sf "$src" "$dst"
  echo "Symlink created: $dst -> $src"
}

set_up_bash() {
  create_symlink "$PWD/bash/.bashrc"
  create_symlink "$PWD/bash/.bash_variables"
  source "$HOME/.bashrc"
}

set_up_bash

# git
create_symlink "$PWD/git/.gitconfig"
# ssh
create_symlink "$PWD/ssh/config" "$HOME/.ssh"
# tmux
create_symlink "$PWD/tmux/.tmux.conf"
# vim
create_symlink "$PWD/vim/.vimrc"

