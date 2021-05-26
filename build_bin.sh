#! /bin/bash

set -ex

eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
pip install -U pip
pip install -r requirements.txt

pyinstaller --hidden-import PySide2.QtXml --debug all --noupx --log-level DEBUG main.py
