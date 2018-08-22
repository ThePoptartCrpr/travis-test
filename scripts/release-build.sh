#!/bin/bash

VERSION=`sed '1q;d' data/data.txt`
MCVERSION=`sed '2q;d' data/data.txt`
TITLEVERSION="Aeroteam-v${VERSION}"

echo "${VERSION}"

mkdir ${TITLEVERSION}

mv ../* ${TITLEVERSION}/*