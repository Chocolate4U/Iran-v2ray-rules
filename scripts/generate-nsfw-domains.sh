#!/bin/bash

gh api https://api.github.com/repos/StevenBlack/hosts/contents/alternates/gambling-porn-only/hosts -H "Accept: application/vnd.github.raw" | sed -e 's/^\(|\|\*\|\.\|\-\|0\.0\.0\.0 \|127\.0\.0\.1 \)*//g' -e 's/\^.*$//g' -e 's/^\(www\.\)*//g' -e '/!\|?\|@\|#\|\*\|_\|\\\|\/\|\[\|]\|\[\|\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' -e '/\.$/d' -e '/^\s*$/d' | awk '{$1=$1};1' | dos2unix | idn2 --no-alabelroundtrip --no-tr46 | LC_ALL=C sort -u > nsfw-temp.txt
sed -e 's/^/\./' -e 's/\./\\./g' -e 's/\-/\\-/g' -e 's/$/\$/' nsfw-temp.txt > nsfw-sub.txt
cat nsfw-temp.txt | LC_ALL=C grep -f nsfw-sub.txt | LC_ALL=C sort -u > nsfw-redundant-sub.txt
comm -23 nsfw-temp.txt nsfw-redundant-sub.txt > nsfw.txt
echo "TOTAL_NSFW=$(wc -l < nsfw.txt)" >> $GITHUB_ENV
mv nsfw.txt release