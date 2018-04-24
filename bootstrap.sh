#!/bin/sh
# Prerequisites: Python 2.7, virtualenv.
# Usage:
#     ./bootstrap.sh  # use buildout.cfg
#     ./bootstrap.sh -c coredev.cfg  # use coredev.cfg
virtualenv -p python2.7 .
./bin/pip install -r https://raw.githubusercontent.com/plone/buildout.coredev/5.1/requirements.txt
./bin/buildout "$@"
