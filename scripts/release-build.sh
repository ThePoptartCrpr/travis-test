#!/bin/bash

VERSION=`sed '1q;d' data/data.txt`
MCVERSION=`sed '2q;d' data/data.txt`

echo "${MCVERSION}"