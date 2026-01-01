#!/bin/bash

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

create_symlink() {
  local src=$1
  local dst=${2:-$HOME}

  ln -sfv "$src" "$dst"
}

set_up_git() {
  create_symlink "$PWD/git/.gitconfig"
}

set_up_ssh() {
  local dst="$HOME/.ssh"
  mkdir -p "$dst"
  create_symlink "$PWD/ssh/config" "$dst"
  set_up_ssh_agent
}

set_up_ssh_agent() {
  local dst="$HOME/.config/1Password/ssh"
  if [[ -d "$dst" ]]; then
    create_symlink "$PWD/ssh/agent.toml" "$dst"
  fi
}

main() {
  set_up_git
  set_up_ssh
}

main
