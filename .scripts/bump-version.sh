#!/usr/bin/env bash

set -xe

echo RUNNING FROM "$0"

VERSION=$(cat ./VERSION)

# shellcheck disable=SC2046
# git commit -am "Bump package.json version to v${VERSION} [skip ci]"
# composer update
