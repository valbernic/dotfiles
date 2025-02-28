#!/bin/bash -e

create_symlink() {
  local src=$1
  local dst=${2:-$HOME}

  dst="${dst%/}"

  if [ -d "$dst" ]; then
    dst="$dst/$(basename "$src")"
  fi

  ln -sf "$src" "$dst"
  echo "Symlink created: $dst -> $src"
}

set_up_bash() {
  create_symlink "$PWD/bash/.bashrc"
  create_symlink "$PWD/bash/.bash_variables"
  source "$HOME/.bashrc"
}

set_up_vim() {
  create_symlink "$PWD/vim/.vimrc"
}

set_up_tmux() {
  create_symlink "$PWD/tmux/.tmux.conf"
}

set_up_ssh() {
  create_symlink "$PWD/ssh/config" "$HOME/.ssh"
}

set_up_git() {
  create_symlink "$PWD/git/.gitconfig"
}

set_up_bash
set_up_vim
set_up_tmux
set_up_ssh
set_up_git

