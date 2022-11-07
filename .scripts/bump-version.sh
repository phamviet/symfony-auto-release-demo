#!/usr/bin/env bash

set -xe

echo RUNNING FROM "$0"

VERSION=$(composer config version)
remote=${2:-origin}
branch=${3:-main}

set -xe

git checkout develop
git merge "$branch" -m "Merge from branch master v${VERSION} [skip ci]"
git push "$remote" develop

git checkout production
git merge "$branch" -m "Release v${VERSION} [skip ci]"
git push "$remote" production