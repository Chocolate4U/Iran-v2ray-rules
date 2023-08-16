# :earth_asia: Iran V2Ray Rules
This is an Enhanced and All-in-One set of geo-location routing files optimized for Iranian users to use in v2ray/xray and all their compatible clients.

# :scroll: Categories

## GeoIP  
`geoip:ir`  
: Contains Iran IP adresses from Maxmind database and IP adresses of Iranian messengers such as `eitaa`, `rubika`, etc.

`geoip:private`  
: Contains a list of local (LAN) IP adresses.

`geoip:arvancloud`  
: Contains IP adresses of ArvanCloud.ir CDN.

`geoip:derakcloud`  
: Contains IP adresses of Derak.cloud CDN.

`geoip:iranserver`  
: Contains IP adresses of IranServer.com CDN.

## GeoSite  
`geosite:ir`  
: Contains non-ir TLD Iranian domains (e.g. `.com` `.net` `.org` etc.) and rules to bypass all `.ir` domains.

`geosite:ads`  
: Contains a curated list of Persian and Foreign advertisement and tracking domains based on multiple sources. It is optimized to has as low as possible false positives while also retain small size and efficiency.

`geosite:malware`  
: Contains a list of active malware domains.

`geosite:phishing`  
: Contains a list of scam and phishing domains.

`geosite:cryptominers`  
: Contains a list of cryptocurrency miners that run in the background of a web browser and affect system performance.

## Country.mmdb  
Same as `GeoIP` but in Maxmind's MMDB format.

# :arrow_down: How to download
## From GitHub
[https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip.dat](https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip.dat)  
[https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite.dat](https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite.dat)  

## From jsdelivr CDN
[https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geoip.dat](https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geoip.dat)  
[https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geosite.dat](https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geosite.dat)  

# Usage
## v2ray/xray core
Add the following to your v2ray/xray client configuration:
```
"outbounds": [
  {
    "tag": "direct",
    "protocol": "freedom",
    "settings": {}
  },
  {
    "tag": "block",
    "protocol": "blackhole",
    "settings": {}
  }
],
"routing": {
  "domainStrategy": "IPIfNonMatch",
  "rules": [
    {
      "outboundTag": "block",
      "domain": [
        "geosite:ads",
        "geosite:malware",
        "geosite:phishing",
        "geosite:cryptominers"
      ],
      "type": "field"
    },
    {
      "outboundTag": "direct",
      "domain": [
        "geosite:ir"
      ],
      "type": "field"
    },
    {
      "outboundTag": "Direct",
      "ip": [
        "geoip:ir",
        "geoip:private",
        "geoip:arvancloud"
      ],
      "type": "field"
    },
  ]
}
```

# :information_desk_person: How is this made?  
`geoip.dat` and `Country.mmdb` are generated using source code from [geoip](https://github.com/Loyalsoldier/geoip) repository by [Loyalsoldier](https://github.com/Loyalsoldier). Please refer to mentioned repository for instrunctions on how to make custom `geoip` files.  
`geosite.dat` is generated using source code from [Domain list community](https://github.com/v2fly/domain-list-community). Please refer to mentioned repository for instrunctions on how to make custom `geosite` files.  

# :handshake: Contribution
All contributions are welcome and appreciated. You can contribute to this project in 2 ways:  
1. Contribute to it's upstream sources  
   Do you know a Domain that should be bypassed? report it to [Iran Hosted Domains](https://github.com/bootmortis/iran-hosted-domains)  
   Do you know a persian advertisement domain that should be blocked or a false positive? report it to [PersianBlocker](https://github.com/MasterKia/PersianBlocker)  
   Do you know... OK you got the idea!  
2. Contribute directly to this project  
   Report issues, open pull requests, suggest new sources or categories or any idea in general to make this repository more useful for everyone.  

:raising_hand_man: Also one more thing, if this repository was useful to you, kindly leave a :star: up there so this project can be seen by more people.


# :copyright: License
This project, except for upstream sources, is licensed under the GNU GPLv3 License - see the [LICENSE](https://github.com/Chocolate4U/Iran-v2ray-rules/blob/main/LICENSE) file for details.

All rights are reserved for All upstream sources used in this project according to their respective licenses. Please refer to [Sources](#sources) section for more details.

# :package: Sources
## GeoIP
| Source      | Maintainer  | Home Page                                                                                 | License                                                                              | Category          |
| ----------- | ----------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ | ----------------- |
| GeoLite2    | MaxMind     | [Home Page](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data)                 | [CC BY-SA 4.0](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data#license) | ir                |
| ITO GOV     | ITO GOV     | [Home Page](https://eservices.ito.gov.ir/Page/IPListMessenger)                            | N/A                                                                                  | ir(messenger IPs) |
| Arvan Cloud | Arvan Cloud | [Home Page](https://www.arvancloud.ir/en/dev/ips)                                         | All rights reserved                                                                  | arvancloud        |
| Derak Cloud | Derak Cloud | [Home Page](https://derak.cloud/لیست-بازه-های-ip)                                         | All rights reserved                                                                  | derakcloud        |
| IranServer  | IranServer  | [Home Page](https://docs.iranserver.com/irserver-cloud/cdn/allow-iranserver-ip-addresses) | All rights reserved                                                                  | iranserver        |

## GeoSite
| Source                      | Maintainer           | Home Page                                                      | License                                                                         | Category     |
| --------------------------- | -------------------- | -------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------ |
| Iran Hosted Domains         | bootmortis           | [Home Page](https://github.com/bootmortis/iran-hosted-domains) | [MIT](https://github.com/bootmortis/iran-hosted-domains/blob/main/LICENSE)      | ir           |
| PersianBlocker              | MasterKia            | [Home Page](https://github.com/MasterKia/PersianBlocker)       | [AGPL-3.0](https://github.com/MasterKia/PersianBlocker/blob/main/LICENSE)       | ads          |
| DNS Blocklists              | Hagezi               | [Home Page](https://github.com/hagezi/dns-blocklists)          | All rights reserved                                                             | ads          |
| Ad and tracking server list | Peter Lowe           | [Home Page](https://pgl.yoyo.org/adservers)                    | [McRae GPL](https://pgl.yoyo.org/license)                                       | ads          |
| GoodbyeAds                  | jerryn70             | [Home Page](https://github.com/jerryn70/GoodbyeAds)            | [MIT](https://github.com/jerryn70/GoodbyeAds/blob/master/LICENSE)               | ads          |
| AdGuard DNS filter          | Adguard Team         | [Home Page](https://github.com/AdguardTeam/AdGuardSDNSFilter)  | [GPL-3.0](https://github.com/AdguardTeam/AdGuardSDNSFilter/blob/master/LICENSE) | ads          |
| URLhaus                     | abuse.ch             | [Home Page](https://urlhaus.abuse.ch)                          | [CC0](https://urlhaus.abuse.ch/api/#tos)                                        | malware      |
| Phishing URL Blocklist      | malware-filter Group | [Home Page](https://gitlab.com/malware-filter/phishing-filter) | [MIT](https://gitlab.com/malware-filter/phishing-filter/-/blob/main/LICENSE)    | phishing     |
| NoCoin adblock list         | hoshsadiq            | [Home Page](https://github.com/hoshsadiq/adblock-nocoin-list)  | [MIT](https://github.com/hoshsadiq/adblock-nocoin-list/blob/master/LICENSE)     | cryptominers |

# :warning: Disclaimer
This repository is not affiliated, associated, authorized, endorsed by, or in any way officially connected to any of the aformentioned resources, websites, services, or any entity which this may concern, in any way.  
The data in this repository is gathered from publicly available resources and is provided as-is, intended for informational purposes only with no guarantee of accuracy, liability or availability. We are not responsible for any harm or damage that may arise from using the data in this repository, and you, as the user, are the sole responsible for using it.

# :pray: Special Thanks
- All list maintainers that mentioned in this project.
- [Project V](https://github.com/v2fly)
- [Project X](https://github.com/XTLS)
- [Domain list community](https://github.com/v2fly/domain-list-community)
- [Loyalsoldier](https://github.com/Loyalsoldier)
