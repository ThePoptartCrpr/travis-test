#!/bin/bash

git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"

VERSION=`sed '1q;d' data/data.txt`
MCVERSION=`sed '2q;d' data/data.txt`
export TITLEVERSION="Aeroteam-v${VERSION}"

echo "${VERSION}"
echo $PWD

cd $HOME

echo $PWD

zip "${TITLEVERSION}.zip" ${TRAVIS_BUILD_DIR}/*

git tag ${TITLEVERSION}