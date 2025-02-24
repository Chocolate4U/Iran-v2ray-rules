#!/bin/bash

# Download the lists using github api
gh api https://api.github.com/repos/MrDevAnony/DynX-AntiBan-Domains/contents/DynX-AntiBan-list.lst -H "Accept: application/vnd.github.raw" > sanctioned-raw.txt
gh api https://api.github.com/repos/filteryab/ir-sanctioned-domain/contents/data/ir-sanctioned-domain -H "Accept: application/vnd.github.raw" >> sanctioned-raw.txt

# Clean, deduplicate and sort the lists
cat sanctioned-raw.txt | sed -e 's/^\(|\|\*\|\.\|\-\|0\.0\.0\.0\|127\.0\.0\.1\)*//g' -e 's/\^.*$//g' -e '/!\|?\|@\|#\|\*\|_\|\\\|\/\|\[\|]\|\[\|\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' -e '/\.$/d' -e '/^\s*$/d' | awk '{$1=$1};1' | dos2unix | idn2 --no-alabelroundtrip --no-tr46 | LC_ALL=C sort -u > sanctioned-temp.txt

# Remove Redundant Subdomains
sed -e 's/^/\./' -e 's/\./\\./g' -e 's/\-/\\-/g' -e 's/$/\$/' sanctioned-temp.txt > sanctioned-sub.txt
cat sanctioned-temp.txt | LC_ALL=C grep -f sanctioned-sub.txt | LC_ALL=C sort -u > sanctioned-redundant-sub.txt
comm -23 sanctioned-temp.txt sanctioned-redundant-sub.txt > sanctioned.txt
mv sanctioned.txt domains
