#!/usr/bin/env bash

set -xe

echo RUNNING FROM "$0"

VERSION=$(cat ./VERSION)

# shellcheck disable=SC2046
composer config version $(cat VERSION)
git commit -am "Bump composer version to v${VERSION} [skip ci]"

git checkout develop
git merge production -m "Merge from production"
git push origin develop
