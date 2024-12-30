#!/bin/bash

sudo apt update

install() {
  which $1 &>/dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# git
install git

# vim
install vim

# neovim
insstall neovim

# ripgrep
install ripgrep

# tmux
install tmux

# python
# install pyenv build dependencies
pyenv_packages=(
  build-essential
  libssl-dev
  zlib1g-dev
  libbz2-dev
  libreadline-dev
  libsqlite3-dev
  curl
  git
  libncursesw5-dev
  xz-utils
  tk-dev
  libxml2-dev
  libxmlsec1-dev
  libffi-dev
  liblzma-dev
)

for package in "${pyenv_packages[@]}"; do
  install $package
done

# install pyenv
rm -rf "$HOME/.pyenv"
curl https://pyenv.run | bash

# install python3 globally
python_3_version=3.12.8
pyenv install "$python_3_version"
pyenv global "$python_3_version"

# install python virtualenv
pip install virtualenv
