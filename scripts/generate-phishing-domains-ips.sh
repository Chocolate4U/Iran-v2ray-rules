#!/bin/bash

gh api https://api.github.com/repos/curbengh/phishing-filter/contents/phishing-filter-dnscrypt-blocked-names.txt?ref=gh-pages -H "Accept: application/vnd.github.raw" | sed -e 's/^\(|\|@\|\*\|\.\|\-\|0\.0\.0\.0\|127\.0\.0\.1\)*//g' -e 's/\^.*$//g' -e '/!\|?\|@\|#\|\*\|_\|\\\|\/\|\[\|]\|\[\|\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' -e '/\.$/d' -e '/^\s*$/d' | awk '{$1=$1};1' | dos2unix | idn2 --no-alabelroundtrip --no-tr46 | LC_ALL=C sort -u > phishing-temp.txt
gh api https://api.github.com/repos/curbengh/phishing-filter/contents/phishing-filter-dnscrypt-blocked-ips.txt?ref=gh-pages -H "Accept: application/vnd.github.raw" | sed -e '/#/d' -e '/^$/d' > phishing-ip.txt
[[ -s phishing-ip.txt ]] || gh api https://api.github.com/repos/Chocolate4U/Iran-v2ray-rules/contents/text/phishing.txt?ref=release -H "Accept: application/vnd.github.raw" > phishing-ip.txt
sed -e 's/^/\./' -e 's/\./\\./g' -e 's/\-/\\-/g' -e 's/$/\$/' phishing-temp.txt > phishing-sub.txt
cat phishing-temp.txt | LC_ALL=C grep -f phishing-sub.txt | LC_ALL=C sort -u > phishing-redundant-sub.txt
comm -23 phishing-temp.txt phishing-redundant-sub.txt > phishing.txt
mv phishing.txt domains
