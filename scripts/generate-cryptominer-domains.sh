#!/bin/bash

gh api https://api.github.com/repos/hoshsadiq/adblock-nocoin-list/contents/hosts.txt -H "Accept: application/vnd.github.raw" | sed -e 's/^\(|\|\*\|\.\|\-\|0\.0\.0\.0\|127\.0\.0\.1\)*//g' -e 's/\^.*$//g' -e '/!\|?\|@\|#\|\*\|_\|\\\|\/\|\[\|]\|\[\|\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' -e '/\.$/d' -e '/^\s*$/d' | awk '{$1=$1};1' | dos2unix | idn2 --no-alabelroundtrip --no-tr46 | LC_ALL=C sort -u > cryptominers-temp.txt
sed -e 's/^/\./' -e 's/\./\\./g' -e 's/\-/\\-/g' -e 's/$/\$/' cryptominers-temp.txt > cryptominers-sub.txt
cat cryptominers-temp.txt | LC_ALL=C grep -f cryptominers-sub.txt | LC_ALL=C sort -u > cryptominers-redundant-sub.txt
comm -23 cryptominers-temp.txt cryptominers-redundant-sub.txt > cryptominers.txt
mv cryptominers.txt domains
