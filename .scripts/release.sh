#!/bin/bash

# Usage ./scripts/release.sh

title=$(date +"release-%H%M-%F")
gh pr create --base main --head develop --label release --title "$title" --fill "$@"