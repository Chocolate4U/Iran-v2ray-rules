#!/bin/bash

# دانلود آدرس‌های اولیه و فیلتر کردن آنها
gh api https://api.github.com/repos/MasterKia/PersianBlocker/contents/PersianBlockerHosts.txt -H "Accept: application/vnd.github.raw" | \
    sed -e 's/^\\(|\\|\\\*\\|\\.\\|\\-\\|0\\.0\\.0\\.0\\|127\\.0\\.0\\.1\\)\*//g' \
        -e 's/\\^.\*$//g' \
        -e '/!\\|?\\|@\\|#\\|\\\*\\|\_\\|\\\\\\|\\/\\|\\\[\\|\]\\|\\\[\\|\\(\[0-9\]\\{1,3\\}\\.\\)\\{3\\}\[0-9\]\\{1,3\\}/d' \
        -e '/\\.$/d' \
        -e '/^\\s\*$/d' | \
    awk '{$1=$1};1' | \
    dos2unix | \
    idn2 --no-alabelroundtrip --no-tr46 | \
    LC_ALL=C sort -u > ads.txt

# دانلود فایل‌های مختلف و اضافه کردن به فایل اصلی
urls=(
    "https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt"
    "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts"
    "https://v.firebog.net/hosts/static/w3kbl.txt"
    "https://adaway.org/hosts.txt"
    "https://v.firebog.net/hosts/AdguardDNS.txt"
    "https://v.firebog.net/hosts/Admiral.txt"
    "https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt"
    "https://v.firebog.net/hosts/Easylist.txt"
    "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"
    "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts"
    "https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts"
    "https://v.firebog.net/hosts/Easyprivacy.txt"
    "https://v.firebog.net/hosts/Prigent-Ads.txt"
    "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts"
    "https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt"
    "https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt"
    "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareHosts.txt"
    "https://osint.digitalside.it/Threat-Intel/lists/latestdomains.txt"
    "https://v.firebog.net/hosts/Prigent-Crypto.txt"
    "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts"
    "https://bitbucket.org/ethanr/dns-blacklists/raw/8575c9f96e5b4a1308f2f12394abd86d0927a4a0/bad_lists/Mandiant_APT1_Report_Appendix_D.txt"
    "https://phishing.army/download/phishing_army_blocklist_extended.txt"
    "https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-malware.txt"
    "https://v.firebog.net/hosts/RPiList-Malware.txt"
    "https://v.firebog.net/hosts/RPiList-Phishing.txt"
    "https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt"
    "https://raw.githubusercontent.com/AssoEchap/stalkerware-indicators/master/generated/hosts"
    "https://urlhaus.abuse.ch/downloads/hostfile/"
    "https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser"
)

# استفاده از parallel برای دانلود همزمان
printf "%s\n" "${urls[@]}" | \
    parallel -j 4 "gh api {} -H 'Accept: application/vnd.github.raw'" >> category-ads-all-raw.txt

# فیلتر کردن و پردازش داده‌ها
sed -e 's/^\\(|\\|\\\*\\|\\.\\|\\-\\|0\\.0\\.0\\.0\\|127\\.0\\.0\\.1\\)\*//g' \
    -e 's/\\^.\*$//g' \
    -e '/!\\|?\\|@\\|#\\|\\\*\\|\_\\|\\\\\\|\\/\\|\\\[\\|\]\\|\\\[\\|\\(\[0-9\]\\{1,3\\}\\.\\)\\{3\\}\[0-9\]\\{1,3\\}/d' \
    -e '/\\.$/d' \
    -e '/^\\s\*$/d' category-ads-all-raw.txt | \
    awk '{$1=$1};1' | \
    dos2unix | \
    idn2 --no-alabelroundtrip --no-tr46 | \
    LC_ALL=C sort -u > category-ads-all-temp.txt

# دانلود whitelist و پردازش آن
gh api https://api.github.com/repos/AdguardTeam/AdGuardSDNSFilter/contents/Filters/exclusions.txt -H "Accept: application/vnd.github.raw" > whitelist-raw.txt
gh api https://api.github.com/repos/AdguardTeam/AdGuardSDNSFilter/contents/Filters/exceptions.txt -H "Accept: application/vnd.github.raw" >> whitelist-raw.txt

# پردازش whitelist
sed -e 's/^\\(|\\|@\\|\\\*\\|\\.\\|\\-\\|0\\.0\\.0\\.0\\|127\\.0\\.0\\.1\\)\*//g' \
    -e 's/\\^.\*$//g' \
    -e '/!\\|?\\|@\\|#\\|\\\*\\|\_\\|\\\\\\|\\/\\|\\\[\\|\]\\|\\\[\\|\\(\[0-9\]\\{1,3\\}\\.\\)\\{3\\}\[0-9\]\\{1,3\\}/d' \
    -e '/\\.$/d' \
    -e '/^\\s\*$/d' whitelist-raw.txt | \
    awk '{$1=$1};1' | \
    dos2unix | \
    idn2 --no-alabelroundtrip --no-tr46 | \
    LC_ALL=C sort -u > whitelist-temp.txt

# مقایسه و پردازش آدرس‌ها
comm -23 category-ads-all-temp.txt whitelist-temp.txt > category-ads-all-temp-temp.txt
sed -e 's/^/\\./' -e 's/\\./\\\\./g' -e 's/\\-/\\\\-/g' -e 's/$/\\$/' category-ads-all-temp-temp.txt > category-ads-all-sub.txt
cat category-ads-all-temp-temp.txt | LC_ALL=C grep -f category-ads-all-sub.txt | LC_ALL=C sort -u > category-ads-all-redundant-sub.txt
comm -23 category-ads-all-temp-temp.txt category-ads-all-redundant-sub.txt > category-ads-all.txt

# حذف فایل‌های موقت
rm -f category-ads-all-raw.txt whitelist-raw.txt category-ads-all-temp.txt whitelist-temp.txt

# ذخیره فایل نهایی
mv ads.txt category-ads-all.txt release
