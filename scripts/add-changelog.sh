#!/bin/bash
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git config --global push.default simple

msg="- $TRAVIS_BUILD_NUMBER: $TRAVIS_COMMIT_MESSAGE ($AUTHOR_NAME)"
echo "$msg" >> $TRAVIS_BUILD_DIR/data/changelog.txt
git add $TRAVIS_BUILD_DIR/data/changelog.txt
git commit -m "Update build version file with $TRAVIS_BUILD_NUMBER"