#!/bin/bash

# Usage ./scripts/release.sh

title=$(date +"release-%H%M-%F")
gh pr create --base master --head develop --label release --title "$title" --fill "$@"