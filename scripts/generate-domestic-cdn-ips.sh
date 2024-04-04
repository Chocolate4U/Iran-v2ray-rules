#!/bin/bash

mkdir ir-cdn
curl --connect-timeout 15 -sSL https://www.arvancloud.ir/en/ips.txt > ir-cdn/arvancloud.txt || gh api https://api.github.com/repos/Chocolate4U/Iran-v2ray-rules/contents/text/arvancloud.txt?ref=release -H "Accept: application/vnd.github.raw" > ir-cdn/arvancloud.txt
curl --connect-timeout 15 -sSL https://api.derak.cloud/public/ipv4 > ir-cdn/derakcloud.txt && sed -i -e '$a\' ir-cdn/derakcloud.txt || gh api https://api.github.com/repos/Chocolate4U/Iran-v2ray-rules/contents/text/derakcloud.txt?ref=release -H "Accept: application/vnd.github.raw" > ir-cdn/derakcloud.txt
curl --connect-timeout 15 -sSL https://api.derak.cloud/public/ipv6 >> ir-cdn/derakcloud.txt || gh api https://api.github.com/repos/Chocolate4U/Iran-v2ray-rules/contents/text/derakcloud.txt?ref=release -H "Accept: application/vnd.github.raw" > ir-cdn/derakcloud.txt
curl --connect-timeout 15 -sSL https://ips.f95.com/ip.txt > ir-cdn/iranserver.txt || gh api https://api.github.com/repos/Chocolate4U/Iran-v2ray-rules/contents/text/iranserver.txt?ref=release -H "Accept: application/vnd.github.raw" > ir-cdn/iranserver.txt
curl --connect-timeout 15 -sSL https://parspack.com/cdnips.txt > ir-cdn/parspack.txt || gh api https://api.github.com/repos/Chocolate4U/Iran-v2ray-rules/contents/text/parspack.txt?ref=release -H "Accept: application/vnd.github.raw" > ir-cdn/parspack.txt