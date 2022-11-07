#!/usr/bin/env bash

set -xe

echo RUNNING FROM "$0"

remote=${2}
branch=${3}

set -xe

git checkout develop
git merge "$branch" -m "Merge branch $branch [skip ci]"
git push "$remote" develop

git checkout production
git merge "$branch" -m "Merge branch $branch [skip ci]"
git push "$remote" production