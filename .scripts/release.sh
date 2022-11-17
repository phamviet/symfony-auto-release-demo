#!/bin/bash

# Usage
# ./scripts/release.sh
# ./scripts/release.sh --label minor

title=$(date +"release-%H%M-%F")
gh pr create --base master --head develop --label release --title "$title" --fill "$@"