#!/usr/bin/bash

set -xe

# Install pyenv
echo 'Install Pyenv......'
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
exec "$SHELL" -l


# Install other packages
echo 'Install other packages......'
sudo yum -y install gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel


# Install Pipenv
echo 'Install Pipenv'
sudo pip install pipenv