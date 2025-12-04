#!/bin/bash
set -o errexit
set -o xtrace
set -o pipefail


rm -rf pages || true
mkdir pages
rm -rf trees || true
mkdir trees
./bin/download.sh
sleep 1m
./bin/recreate-pages.js
sleep 2m
./bin/recreate-tree.js
sleep 2m
git pull
git add . 
git commit -m'update info'
git push origin gh-pages