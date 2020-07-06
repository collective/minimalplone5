#!/bin/sh
# Prerequisites: Python 2.7, virtualenv.
# Usage:
#     ./bootstrap.sh  # use buildout.cfg
#     ./bootstrap.sh -c coredev.cfg  # use coredev.cfg
virtualenv -p python2.7 .
./bin/pip install -r https://dist.plone.org/release/5-latest/requirements.txt
./bin/buildout "$@"
