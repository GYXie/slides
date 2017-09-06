#!/usr/bin/env bash
xelatex -shell-escape $1
if [ $? != 0 ]; then exit 1;fi
xelatex -shell-escape $1
if [ $? != 0 ]; then exit 1;fi
bibtex ${1%.*} # notice: no suffix '.tex'
if [ $? != 0 ]; then exit 1;fi
xelatex -shell-escape $1
