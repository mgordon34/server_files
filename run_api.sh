#!/bin/bash

HOME=/home/matt
BINDIR=$HOME/git/server/overRank/api
VENVDIR=$HOME/git/server/overRank/venv

cd $BINDIR
source $VENVDIR/bin/activate
python $BINDIR/run.py
