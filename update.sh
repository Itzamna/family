#!/bin/bash
set -o errexit
set -o xtrace
set -o pipefail

./bin/download.sh

git pull origin gh-pages
git add .
git commit -m'update info'
git push origin gh-pages