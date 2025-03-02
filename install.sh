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
  local src="$PWD/git/.gitconfig"
  local dst="/mnt/c/Users/Shadow"
      
  # Git on Windows won't be able to access '.gitconfig' located in WSL.
  # The file must be placed on the Windows host, not within WSL.
  cp -f "$src" "$dst"

  create_symlink "$dst/.gitconfig"
}

set_up_vscode() {
  create_symlink "$PWD/vscode/settings.json" "/mnt/c/Users/Shadow/AppData/Roaming/Code/User"
}

set_up_bash
set_up_vim
set_up_tmux
set_up_ssh
set_up_git
set_up_vscode

