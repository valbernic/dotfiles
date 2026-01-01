#!/bin/bash

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

## bash ##

set_up_bash() {
  print_tool "bash"
  local dst="$HOME/.bashrc.d"
  mkdir -p "$dst"
  create_symlink "$PWD/bash/.bashrc"
  create_symlink "$PWD/bash/00-variables" "$dst"
  create_symlink "$PWD/bash/01-aliases" "$dst"
  create_symlink "$PWD/bash/functions" "$dst"
  create_symlink "$PWD/bash/.path.sh"
  source "$HOME/.bashrc"
}

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

## tmux ##

set_up_tmux() {
  print_tool "tmux"
  create_symlink "$PWD/tmux/.tmux.conf"
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
  set_up_bash
  set_up_git
  set_up_ssh
  set_up_tmux
  set_up_vim
}

main
