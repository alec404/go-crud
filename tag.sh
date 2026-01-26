#!/usr/bin/env bash
# tag.sh

git tag v0.0.1

git tag api/v0.0.2
git tag pagination/v0.0.2
git tag entgo/v0.0.2

git push origin --tags
