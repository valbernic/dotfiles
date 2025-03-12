#!/bin/bash -e

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

create_symlink() {
  local src=$1
  local dst=${2:-$HOME}

  ln -sfv "$src" "$dst"
}

set_up_bash() {
  create_symlink "$PWD/bash/.bashrc"
  create_symlink "$PWD/bash/.bash_aliases"
  create_symlink "$PWD/bash/.bash_functions"
  create_symlink "$PWD/bash/.bash_variables"
  create_symlink "$PWD/bash/.envsetup.sh"
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

set_up_vscode() {
  local dst="$HOME/.config/Code/User"
  [[ -d "$dst" ]] && create_symlink "$PWD/vscode/settings.json" "$dst"
}

set_up_bash
set_up_vim
set_up_tmux
set_up_ssh
set_up_git
set_up_vscode

