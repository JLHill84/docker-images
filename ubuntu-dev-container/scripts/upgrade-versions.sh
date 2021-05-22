#!/bin/bash

apt-get upgrade -y && apt dist-upgrade -y
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
apt-get install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl
curl https://pyenv.run | bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >>~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >>~/.profile
echo 'eval "$(pyenv init --path)"' >>~/.profile
source ~/.profile
