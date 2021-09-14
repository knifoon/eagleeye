#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

git push origin `git subtree split --prefix dist master`:Live --force
