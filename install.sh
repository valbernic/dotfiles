#!/bin/bash -e

ln -sf $PWD/vim/.vimrc $HOME
ln -sf $PWD/tmux/.tmux.conf $HOME
ln -sf $PWD/git/.gitconfig $HOME

ln -sf $PWD/bash/.bashrc $HOME
ln -sf $PWD/bash/.bash_aliases $HOME
ln -sf $PWD/bash/.bash_variables $HOME
source $HOME/.bashrc

ln -sf $PWD/ssh/config $HOME/.ssh
ln -sf $PWD/ssh/agent.toml $HOME/.config/1Password/ssh

