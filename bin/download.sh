#!/bin/bash
set -o errexit
set -o xtrace
set -o pipefail

#./node_modules/.bin/gsjson 1rgBLNuH-Z2gbP1O1ilaYCMi8h-rtaPgvb3HvBACprGk |
#	./node_modules/.bin/json > _data/family.json
  
  
wget -q -O- 'https://docs.google.com/spreadsheets/d/e/2PACX-1vT768tbwxLtNTpy8K58KX--jHeRYaMJmv4pZJD4TxiWfSzD3K90NOTOqXNtfd0S2RS8HZ1Omh1-Rfz5/pub?gid=0&single=true&output=csv' > _data/family.csv
