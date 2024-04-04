#!/bin/bash

gh api https://api.github.com/repos/StevenBlack/hosts/contents/alternates/social-only/hosts -H "Accept: application/vnd.github.raw" | sed -e 's/^\(|\|\*\|\.\|\-\|0\.0\.0\.0 \|127\.0\.0\.1 \)*//g' -e 's/\^.*$//g' -e 's/^\(www\.\)*//g' -e '/!\|?\|@\|#\|\*\|_\|\\\|\/\|\[\|]\|\[\|\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' -e '/\.$/d' -e '/^\s*$/d' | awk '{$1=$1};1' | dos2unix | idn2 --no-alabelroundtrip --no-tr46 | LC_ALL=C sort -u > social-temp.txt
sed -e 's/^/\./' -e 's/\./\\./g' -e 's/\-/\\-/g' -e 's/$/\$/' social-temp.txt > social-sub.txt
cat social-temp.txt | LC_ALL=C grep -f social-sub.txt | LC_ALL=C sort -u > social-redundant-sub.txt
comm -23 social-temp.txt social-redundant-sub.txt > social.txt
mv social.txt release