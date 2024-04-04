#!/bin/bash

gh api https://api.github.com/repos/MasterKia/PersianBlocker/contents/PersianBlockerHosts.txt -H "Accept: application/vnd.github.raw" | sed -e 's/^\(|\|\*\|\.\|\-\|0\.0\.0\.0\|127\.0\.0\.1\)*//g' -e 's/\^.*$//g' -e '/!\|?\|@\|#\|\*\|_\|\\\|\/\|\[\|]\|\[\|\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' -e '/\.$/d' -e '/^\s*$/d' | awk '{$1=$1};1' | dos2unix | idn2 --no-alabelroundtrip --no-tr46 | LC_ALL=C sort -u > ads.txt
gh api https://api.github.com/repos/MasterKia/PersianBlocker/contents/PersianBlockerHosts.txt -H "Accept: application/vnd.github.raw" > category-ads-all-raw.txt
gh api https://api.github.com/repos/hagezi/dns-blocklists/contents/wildcard/light-onlydomains.txt -H "Accept: application/vnd.github.raw" >> category-ads-all-raw.txt
gh api https://api.github.com/repos/jerryn70/GoodbyeAds/contents/Extension/GoodbyeAds-Samsung-AdBlock.txt -H "Accept: application/vnd.github.raw" >> category-ads-all-raw.txt
gh api https://api.github.com/repos/jerryn70/GoodbyeAds/contents/Extension/GoodbyeAds-Xiaomi-Extension.txt -H "Accept: application/vnd.github.raw" >> category-ads-all-raw.txt

cat category-ads-all-raw.txt | sed -e 's/^\(|\|\*\|\.\|\-\|0\.0\.0\.0\|127\.0\.0\.1\)*//g' -e 's/\^.*$//g' -e '/!\|?\|@\|#\|\*\|_\|\\\|\/\|\[\|]\|\[\|\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' -e '/\.$/d' -e '/^\s*$/d' | awk '{$1=$1};1' | dos2unix | idn2 --no-alabelroundtrip --no-tr46 | LC_ALL=C sort -u > category-ads-all-temp.txt

gh api https://api.github.com/repos/AdguardTeam/AdGuardSDNSFilter/contents/Filters/exclusions.txt -H "Accept: application/vnd.github.raw" > whitelist-raw.txt
gh api https://api.github.com/repos/AdguardTeam/AdGuardSDNSFilter/contents/Filters/exceptions.txt -H "Accept: application/vnd.github.raw" >> whitelist-raw.txt

cat whitelist-raw.txt | sed -e 's/^\(|\|@\|\*\|\.\|\-\|0\.0\.0\.0\|127\.0\.0\.1\)*//g' -e 's/\^.*$//g' -e '/!\|?\|@\|#\|\*\|_\|\\\|\/\|\[\|]\|\[\|\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' -e '/\.$/d' -e '/^\s*$/d' | awk '{$1=$1};1' | dos2unix | idn2 --no-alabelroundtrip --no-tr46 | LC_ALL=C sort -u > whitelist-temp.txt

comm -23 category-ads-all-temp.txt whitelist-temp.txt > category-ads-all-temp-temp.txt
sed -e 's/^/\./' -e 's/\./\\./g' -e 's/\-/\\-/g' -e 's/$/\$/' category-ads-all-temp-temp.txt > category-ads-all-sub.txt
cat category-ads-all-temp-temp.txt | LC_ALL=C grep -f category-ads-all-sub.txt | LC_ALL=C sort -u > category-ads-all-redundant-sub.txt
comm -23 category-ads-all-temp-temp.txt category-ads-all-redundant-sub.txt > category-ads-all.txt
rm -f category-ads-all-raw.txt whitelist-raw.txt category-ads-all-temp.txt whitelist-temp.txt
mv ads.txt category-ads-all.txt release