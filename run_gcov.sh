#!/bin/env sh
FILENAME=$1

cd `dirname ${FILENAME}`
gcov-5 -o . `basename ${FILENAME}`
cd -