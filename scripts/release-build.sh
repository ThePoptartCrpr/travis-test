#!/bin/bash

VERSION=`sed '1q;d' data/data.txt`
MCVERSION=`sed '2q;d' data/data.txt`
TITLEVERSION="Aeroteam-v${VERSION}"

echo "${VERSION}"

zip "Aeroteam-v${VERSION}.zip" ../*