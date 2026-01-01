#!/bin/bash

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

## git ##

set_up_git() {
  print_tool "git"
  create_symlink "$PWD/git/.gitconfig"
}

## ssh ##

set_up_ssh() {
  print_tool "ssh"
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

## vim ##

set_up_vim() {
  print_tool "vim"
  create_symlink "$PWD/vim/.vimrc"
  mkdir -p "$HOME/.vim"
  create_symlink "$PWD/vim/functions.vim" "$HOME/.vim"
}

## utils ##

create_symlink() {
  local src=$1
  local dst=${2:-$HOME}

  echo "    - $(ln -sfv $src $dst)"
}

print_tool() {
  local tool="$1"
  echo -e "\n  ## $tool ##\n"
}

## main ##

main() {
  set_up_git
  set_up_ssh
  set_up_vim
}

main
