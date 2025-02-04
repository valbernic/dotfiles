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
  create_symlink "$PWD/bash/.bash_aliases"
  create_symlink "$PWD/bash/.bash_variables"
  source "$HOME/.bashrc"
}

set_up_ssh_agent() {
  local dst="$HOME/.config/1Password/ssh"
  mkdir -p "$dst"
  create_symlink "$PWD/ssh/agent.toml" "$dst"
}

set_up_ssh() {
  create_symlink "$PWD/ssh/config" "$HOME/.ssh"
  set_up_ssh_agent
}

set_up_bash

# git
create_symlink "$PWD/git/.gitconfig"
# ssh
set_up_ssh
# tmux
create_symlink "$PWD/tmux/.tmux.conf"
# vim
create_symlink "$PWD/vim/.vimrc"

