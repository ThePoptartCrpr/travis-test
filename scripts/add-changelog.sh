#!/bin/bash
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git config --global push.default simple

msg="- $TRAVIS_BUILD_NUMBER: $TRAVIS_COMMIT_MESSAGE ($AUTHOR_NAME)"
echo "$msg" >> data/changelog.txt

sed '2q;d' data/data.txt

git add data/changelog.txt
git commit -m "Update changelog [skip ci]"