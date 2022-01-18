#!/bin/ash
set -e
python3 -m ensurepip
python3 -m pip install --upgrade pip
python3 -m pip install setuptools
python3 setup.py install
