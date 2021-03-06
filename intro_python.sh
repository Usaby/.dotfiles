#!/bin/sh

# install pyenv
brew install pyenv-virtualenv pyenv
git clone https://github.com/yyuu/pyenv-pip-rehash.git ~/.pyenv/plugins/pyenv-pip-rehash

pyenv install $(Pyenv install -l | grep 'anaconda3-' | tr -d ' ' | tail -1) && \
Pyenv install $(Pyenv install -l | grep 'anaconda-' | tr -d ' ' | tail -1) && \
pyenv rehash

#install opencv(2.x)
export PATH=~/.pyenv/versions/$(ls ~/.pyenv/versions/ | grep 'anaconda-' | tail -1)/bin:$PATH && \
pyenv global $(Pyenv versions | grep 'anaconda-' | tr -d ' ' | tail -1) && \
conda install -c https://conda.binstar.org/jjhelmus opencv

#install opencv(3.x)
export PATH=~/.pyenv/versions/$(ls ~/.pyenv/versions/ | grep 'anaconda3-' | tail -1)/bin:$PATH && \
pyenv global $(Pyenv versions | grep 'anaconda3-' | tr -d ' ' | tail -1) && \
conda install -c https://conda.anaconda.org/menpo opencv3
