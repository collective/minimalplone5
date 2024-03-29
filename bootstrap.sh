#!/bin/sh
# Prerequisites: Python 3, virtualenv.
# Usage:
#     ./bootstrap.sh  # use buildout.cfg
#     ./bootstrap.sh -c coredev.cfg  # use coredev.cfg
virtualenv -p python3 venv
./venv/bin/pip install -r requirements.txt
./venv/bin/buildout "$@"
