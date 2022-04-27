#!/bin/bash
set -o errexit
set -o xtrace
set -o pipefail


rm -rf pages || true
mkdir pages
rm -rf trees || true
mkdir trees
./bin/download.sh
./bin/recreate-pages.js
./bin/recreate-tree.js

git pull origin gh-pages
git add .
git commit -m'update info'
git push origin gh-pages