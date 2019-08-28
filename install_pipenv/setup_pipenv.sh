#!/usr/bin/bash

set -x

# Install other packages
echo 'Install other packages......'
sudo yum -y install gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel

# Install Pipenv
echo 'Install Pipenv'
sudo `which pip` install pipenv