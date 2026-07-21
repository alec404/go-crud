#!/usr/bin/env bash
# tag.sh

set -euo pipefail

tags=(
  "v0.0.1"
  "api/v0.0.4"
  "pagination/v0.0.5"
  "entgo/v0.0.4"
  "opensearch/v0.0.1"
  "viewer/v0.0.1"
)

for tag in "${tags[@]}"; do
  if git rev-parse -q --verify "refs/tags/$tag" >/dev/null; then
    echo "skip existing tag: $tag"
    continue
  fi
  git tag "$tag"
done

git push origin "${tags[@]}"
