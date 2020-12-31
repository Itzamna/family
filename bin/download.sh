#!/bin/bash
set -o errexit
set -o xtrace
set -o pipefail

wget -q -O- 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRX1a4w77XMVQGiHO_dCejAnIwSrK-EZw4aOUC14im4q6oi5f5gEeIPt4q7A1fqh0qvdM4YJbdlxgPY/pub?gid=0&single=true&output=csv' > _data/clubs.csv
wget -q -O- 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRX1a4w77XMVQGiHO_dCejAnIwSrK-EZw4aOUC14im4q6oi5f5gEeIPt4q7A1fqh0qvdM4YJbdlxgPY/pub?gid=1367138216&single=true&output=csv' > _data/members.csv
wget -q -O- 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRX1a4w77XMVQGiHO_dCejAnIwSrK-EZw4aOUC14im4q6oi5f5gEeIPt4q7A1fqh0qvdM4YJbdlxgPY/pub?gid=1912095489&single=true&output=csv' > _data/champions.csv
wget -q -O- 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRX1a4w77XMVQGiHO_dCejAnIwSrK-EZw4aOUC14im4q6oi5f5gEeIPt4q7A1fqh0qvdM4YJbdlxgPY/pub?gid=1068857440&single=true&output=csv' > _data/tests.csv
wget -q -O- 'https://docs.google.com/spreadsheets/d/e/2PACX-1vTDk9_TydTI-EbzSDYnLs6Pyy1cOW2cDcsi1yzH-Ic-_hkRwiHuO5_3Bid4dlCalfsQaay1pSCh3xxr/pub?gid=1428502923&single=true&output=csv' > _data/showresult.csv
wget -q -O- 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRX1a4w77XMVQGiHO_dCejAnIwSrK-EZw4aOUC14im4q6oi5f5gEeIPt4q7A1fqh0qvdM4YJbdlxgPY/pub?gid=1320504325&single=true&output=csv' > _data/calendar2019.csv
wget -q -O- 'https://docs.google.com/spreadsheets/d/e/2PACX-1vTDk9_TydTI-EbzSDYnLs6Pyy1cOW2cDcsi1yzH-Ic-_hkRwiHuO5_3Bid4dlCalfsQaay1pSCh3xxr/pub?gid=0&single=true&output=csv' > _data/calendar2020.csv