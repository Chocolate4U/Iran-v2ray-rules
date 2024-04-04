#!/bin/bash

gh release download -p domains.txt --repo bootmortis/iran-hosted-domains
cat domains.txt | grep -Ev ".+\.ir$" | sed '1 a\ir\nxn--mgba3a4f16a' | LC_ALL=C sort -u > ir.txt
comm -23 ir.txt ./redundant/redundant-domains.txt > ir-lite.txt
mv ir.txt ir-lite.txt release