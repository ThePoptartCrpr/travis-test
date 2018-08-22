#!/bin/bash
YEAR=$(date +"%Y")
MONTH=$(date +"%m")
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git config --global push.default simple

# export GIT_TAG=V2.$YEAR-$MONTH.$TRAVIS_BUILD_NUMBER
msg="- $TRAVIS_BUILD_NUMBER: $TRAVIS_COMMIT_MESSAGE ($AUTHOR_NAME)"
echo "$msg" >> $TRAVIS_BUILD_DIR/data/changelog.txt
git add $TRAVIS_BUILD_DIR/data/changelog.txt
git commit -m "Update build version file with $TRAVIS_BUILD_NUMBER"