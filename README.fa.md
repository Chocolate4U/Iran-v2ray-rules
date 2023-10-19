<picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/logo-white.png">
  <source media="(prefers-color-scheme: light)" srcset="assets/logo-dark.png">
  <img alt="a logo for iran v2ray rules in both dark and light mode" src="assets/logo-dark.png">
</picture>

<p align="center">
<img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/Chocolate4U/Iran-v2ray-rules/release.yml?event=schedule&style=for-the-badge&logo=github&cacheSeconds=3600">
<img alt="GitHub release" src="https://img.shields.io/github/v/release/Chocolate4U/Iran-v2ray-rules?style=for-the-badge&cacheSeconds=3600">
<img alt="GitHub Release Date" src="https://img.shields.io/github/release-date/Chocolate4U/Iran-v2ray-rules?display_date=published_at&style=for-the-badge&cacheSeconds=3600">
<img alt="GitHub" src="https://img.shields.io/github/license/Chocolate4U/Iran-v2ray-rules?style=for-the-badge&color=blue&cacheSeconds=3600">
</p>

# :writing_hand: معرفی
مجموعه ای از قوانین مسیریابی بهبود یافته و جامع که برای کاربران ایرانی بهینه شده و قابل استفاده در هسته های v2ray/xray و کلیه کلاینت های آنان میباشد.

:bulb: برای قوانین مسیریابی sing-box به اینجا مراجعه کنید [Iran Sing-Box Rules](https://github.com/Chocolate4U/Iran-sing-box-rules)  
:bulb: برای قوانین مسیریابی Clash به اینجا مراجعه کنید [Iran Clash Rules](https://github.com/Chocolate4U/Iran-clash-rules)

# :page_with_curl: دسته بندی ها

## GeoIP
- `geoip:ir`  
  <p align="right">دربر گیرنده IP های ایران استخراج شده از دیتابیس Maxmind و IP2Location به علاوه IP های پیامرسان های ایرانی از جمله "ایتا"، "روبیکا" و غیره.</p>

- `geoip:private`  
  <p align="right">دربر گیرنده IP های شبکه محلی (LAN).</p>

- `geoip:arvancloud`  
  <p align="right">دربر گیرنده IP های سرویس توزیع محتوای ابرآروان.</p>

- `geoip:derakcloud`  
  <p align="right">دربر گیرنده IP های سرویس توزیع محتوای ابردراک.</p>

- `geoip:iranserver`  
  <p align="right">دربر گیرنده IP های سرویس توزیع محتوای ایران سرور.</p>

- `geoip:parspack`  
  <p align="right">دربر گیرنده IP های سرویس توزیع محتوای پارس پک.</p>

- `geoip:cloudflare`  
  <p align="right">دربرگیرنده IP های سرویس توزیع محتوای کلودفلر.</p>

- `geoip:google`  
  <p align="right">دربر گیرنده IP های گوگل، گوگل کلود و گوگل بات.</p>

- `geoip:amazon`  
  <p align="right">در برگیرنده IP های آمازون و سرویس ابری آمازون(AWS).</p>

- `geoip:microsoft`  
  <p align="right">دربر گیرنده IP های مایکروسافت و سرویس ابری آژور.</p>

- `geoip:bing`  
  <p align="right">دربر گیرنده IP های موتور جستجوی بینگ.</p>

- `geoip:github`  
  <p align="right">دربر گیرنده IP های گیت هاب.</p>

- `geoip:facebook`  
  <p align="right">دربر گیرنده IP های اکوسیستم متا، از جمله فیسبوک، اینستاگرام و واتس اپ.</p>

- `geoip:twitter`  
  <p align="right">دربر گیرنده IP های توییتر (یا به عبارتی X!).</p>

- `geoip:telegram`  
  <p align="right">دربر گیرنده IP های تلگرام.</p>

- `geoip:oracle`  
  <p align="right">دربر گیرنده IP های سرویس ابری اوراکل.</p>

- `geoip:digitalocean`  
  <p align="right">دربر گیرنده IP سرویس های ابری دیجیتال اوشن.</p>

- `geoip:linode`  
  <p align="right">دربر گیرنده IP سرویس ابری لینود.</p>

- `geoip:openai`  
  <p align="right">دربر گیرنده IP های OpenAI و ChatGPT.</p>

- `geoip:phishing`  
  <p align="right">دربر گینده IP های فیشینگ.</p>

- `geoip:malware`  
  <p align="right">دربر گیرنده IP های بدافزار.</p>

## GeoIP-Lite
- `geoip:ir`  
  <p align="right">دربر گیرنده IP های ایران استخراج شده از دیتابیس Maxmind و IP2Location به علاوه IP های پیامرسان های ایرانی از جمله "ایتا"، "روبیکا" و غیره.</p>

- `geoip:private`  
  <p align="right">دربر گیرنده IP های شبکه محلی (LAN).</p>

## GeoSite
- `geosite:ir`  
  <p align="right">دربر گیرنده وبسایت های ایرانی به غیر از دامنه های "ir." و قوانینی جهت بایپس کردن کلیه دامنه های "ir.".</p>

- `geosite:ads`  
  <p align="right">دربر گیرنده لیستی از دامنه های تبلیغاتی ایرانی.</p>

- `geosite:category-ads-all`  
  <p align="right">دربر گیرنده لیستی سفارشی شده از دامنه های تبلیغاتی ایرانی و خارجی. این لیست به گونه ای بهینه شده که تا حد امکان خالی از اشتباه باشد در حالی که سبک بودن و موثر بودن خود را نیز حفظ کند.</p>

- `geosite:malware`  
  <p align="right">دربر گیرنده لیستی از دامنه های حاوی بدافزار.</p>

- `geosite:phishing`  
  <p align="right">دربر گیرنده لیستی از دامنه های تقلبی و فیشینگ.</p>

- `geosite:cryptominers`  
  <p align="right">دربر گیرنده لیستی از استخراج کننده های رمزارز که در پس زمینه مرورگر شروع به استخراج کرده و بر کارایی سیستم کاربر تاثیر منفی می گزارند.</p>

- `geosite:social`  
  <p align="right">دربر گیرنده لیستی از دامنه های شبکه های اجتماعی از جمله "Facebook", "Instagram", "Whatsapp", "Twitter", "LinkedIn", "MySpace", "Pinterest", "Tumblr", "Reddit", "TikTok", "clubhouse".</p>

- `geosite:nsfw`
  <p align="right">دربر گیرنده لیستی از دامنه های محتوای بزرگسال و قمار.</p>

## GeoSite-Lite
- `geosite:ir`  
<p align="right">
  دربر گیرنده وبسایت های ایرانی فعال به غیر از دامنه های "ir." و قوانینی جهت بایپس کردن کلیه دامنه های "ir.".<br>
  همه دامنه های ایرانی در لیست معمولی هر 24 ساعت یکبار بررسی شده و پس از حذف دامنه های غیرفعال به این لیست راه میابند.<br>
  این تست ممکن است زیاد دقیق نباشد، به همین دلیل پیشنهاد میکنم هر روز و یا به طور مرتب این لیست را بروزرسانی کنید.
</p>
  
- `geosite:ads`  
  <p align="right">دربر گیرنده لیستی از دامنه های تبلیغاتی ایرانی.</p>

## Country.mmdb
<p align="right">مثل دسته "GeoIP" اما با فرمت اختصاصی MaxMind.</p>

## Country-lite.mmdb
<p align="right">مثل دسته "GeoIP-Lite" اما با فرمت اختصاصی MaxMind.</p>

# :arrow_down: نحوه دانلود
## <picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/github/white"><source media="(prefers-color-scheme: light)" srcset="https://cdn.simpleicons.org/github/dark"><img height="32" width="32" alt="github logo in dark and light mode." src="https://cdn.simpleicons.org/github/dark"></picture> از گیت هاب
`GeoIP` [https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip.dat](https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip.dat)  
`GeoSite` [https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite.dat](https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite.dat)  

`GeoIP-Lite` [https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip-lite.dat](https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geoip-lite.dat)  
`GeoSite-Lite` [https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite-lite.dat](https://github.com/chocolate4u/Iran-v2ray-rules/releases/latest/download/geosite-lite.dat)  

## <picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/jsdelivr/white"><source media="(prefers-color-scheme: light)" srcset="https://cdn.simpleicons.org/jsdelivr/dark"><img height="32" width="32" alt="github logo in dark and light mode." src="https://cdn.simpleicons.org/jsdelivr/dark"></picture> از سرویس توزیع محتوای jsDelivr
`GeoIP` [https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geoip.dat](https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geoip.dat)  
`GeoSite` [https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geosite.dat](https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geosite.dat)  

`GeoIP-Lite` [https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geoip-lite.dat](https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geoip-lite.dat)  
`GeoSite-Lite` [https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geosite-lite.dat](https://cdn.jsdelivr.net/gh/chocolate4u/Iran-v2ray-rules@release/geosite-lite.dat)  

# :computer: نحوه استفاده
## هسته v2ray/xray
قسمت زیر را به قسمت مسیریابی فایل کانفیگ خود اضافه کنید:
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
        "geosite:category-ads-all",
        "geosite:malware",
        "geosite:phishing",
        "geosite:cryptominers"
      ],
      "type": "field"
    },
    {
      "outboundTag": "block",
      "ip": [
        "geoip:malware",
        "geoip:phishing"
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
      "outboundTag": "direct",
      "ip": [
        "geoip:ir",
        "geoip:private",
        "geoip:arvancloud",
        "geoip:derakcloud,
        "geoip:iranserver,
        "geoip:parspack
      ],
      "type": "field"
    },
  ]
}
```

# :information_desk_person: این ها چطوری ساخته شدن؟
فایل های `geoip.dat`,`geoip-lite.dat` و `Country.mmdb`,`Country-lite.mmdb` با استفاده از سورس کد موجود در مخزن [geoip](https://github.com/Loyalsoldier/geoip) ساخته شده اند. لطفا برای نحوه تولید فایل های مسیریابی به مخزن گفته شده مراجعه کنید.  
فایل های `geosite.dat`,`geosite-lite.dat` با استفاده از سورس کد موجود در مخزن [Domain list community](https://github.com/v2fly/domain-list-community) ساخته شده اند. لطفا برای نحوه تولید فایل های مسیریابی به مخزن گفته شده مراجعه کنید.

# :handshake: مشارکت
هرگونه مشارکتی در این مخزن مورد استقبال قرار میگیرد. شما به دو روش میتوانید در این مخزن مشارکت داشته باشید:  
1. مشارکت در سورس های مورد استفاده این مخزن  
   دامنه ای میشناسید که باید بایپس شود؟ به اینجا گزارش بدهید [Iran Hosted Domains](https://github.com/bootmortis/iran-hosted-domains)  
   دامنه تبلیغاتی ایرانی میشناسید که باید مسدود شود؟ به اینجا گزارش بدهید [PersianBlocker](https://github.com/MasterKia/PersianBlocker)  
   دامنه ای میشناسید که... خیلی خوب فکر کنم متوجه منظورم شدید!  
2. مستقیما در این مخزن مشارکت داشته باشید  
   مشکلات را گزارش کنید، سورس های جدید پیشنهاد بدهید، و یا هر گونه ایده که به بهتر شدن این مخزن کمک میکند را با ما به اشتراک بگذارید.

:raising_hand_man: یک مورد دیگه، اگر این مخزن برای شما مفید واقع شده لطفا یک ستاره در بالای این صفحه از خودتون به جا بگذارین تا به بیشتر دیده شدن این لیست کمک بشه.


# :copyright: لایسنس
این پروژه، به جز منابع مورد استفاده، تحت لایسنس GNU GPLv3 قرار دارد. برای جزئیات بیشتر اینجا را ببینید [لایسنس](LICENSE)

تمامی حقوق برای منابع استفاده شده بر اساس لایسنس های مربوطه شان محفوظ است. لطفا برای اطلاعات بیشتر به قسمت منابع مراجعه کنید.

# :package: منابع
## GeoIP
| Source                 | Maintainer           | Home Page                                                                                 | License                                                                              | Category          |
| ---------------------- | -------------------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ | ----------------- |
| GeoLite2               | MaxMind              | [Home Page](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data)                 | [CC BY-SA 4.0](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data#license) | ir                |
| IP2Location LITE       | IP2Location          | [Home Page](https://lite.ip2location.com/ip2location-lite)                                | [CC BY-SA 4.0](https://lite.ip2location.com/terms-of-use)                            | ir                |
| ITO GOV                | ITO GOV              | [Home Page](https://eservices.ito.gov.ir/Page/IPListMessenger)                            | N/A                                                                                  | ir(messenger IPs) |
| Arvan Cloud            | Arvan Cloud          | [Home Page](https://www.arvancloud.ir/en/dev/ips)                                         | All rights reserved                                                                  | arvancloud        |
| Derak Cloud            | Derak Cloud          | [Home Page](https://derak.cloud/لیست-بازه-های-ip)                                         | All rights reserved                                                                  | derakcloud        |
| IranServer             | IranServer           | [Home Page](https://docs.iranserver.com/irserver-cloud/cdn/allow-iranserver-ip-addresses) | All rights reserved                                                                  | iranserver        |
| ParsPack               | ParsPack             | [Home Page](https://parspack.com/cdnips.txt)                                              | All rights reserved                                                                  | parspack          |
| Cloudflare             | Cloudflare           | [Home Page](https://www.cloudflare.com/ips)                                               | All rights reserved                                                                  | cloudflare        |
| Telegram               | Telegram             | [Home Page](https://core.telegram.org/resources/cidr.txt)                                 | All rights reserved                                                                  | Telegram          |
| URLhaus                | abuse.ch             | [Home Page](https://urlhaus.abuse.ch)                                                     | [CC0](https://urlhaus.abuse.ch/api/#tos)                                             | malware           |
| Phishing URL Blocklist | malware-filter Group | [Home Page](https://gitlab.com/malware-filter/phishing-filter)                            | [MIT](https://gitlab.com/malware-filter/phishing-filter/-/blob/main/LICENSE)         | phishing          |
| IPRanges               | lord-alfred          | [Home Page](https://github.com/lord-alfred/ipranges)                                      | [CC0 1.0](https://github.com/lord-alfred/ipranges/blob/main/LICENSE)                 | everything else   |

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
| Unified Hosts               | StevenBlack          | [Home Page](https://github.com/StevenBlack/hosts)              | [MIT](https://github.com/StevenBlack/hosts/blob/master/license.txt)             | social, nsfw |

# :warning: سلب مسئولیت
این مخزن هیچگونه همکاری، ارتباط، مجوز، و یا به طور کلی به هیچ طریقی هیچ گونه ارتباطی به طور رسمی با هریک از منابع ذکر شده اعم از وبسایت ها، سرویس ها و یا هر چیزی که ممکن است به آن ارتباط داشته باشد، ندارد.  
اطلاعات موجود در این مخزن از منابع در دسترس عموم جمع آوری گردیده و فقط به منظور اطلاع رسانی بدون هیچ ضمانتی مبنی بر دقیق بودن و یا در دسترس بودن عرضه شده است. همچنین ما هیچگونه مسئولیتی در برابر هر گونه خسارت ناشی از استفاده از اطلاعات این مخزن که ممکن است به وجود بیاید، نداریم. لطفا قبل از استفاده از اطلاعات این مخزن، تحقیقات لازم را به عمل بیاورید.

# :pray: تشکر ویژه
- همه maintainer های نامبرده شده در این مخزن
- [Project V](https://github.com/v2fly)
- [Project X](https://github.com/XTLS)
- [Domain list community](https://github.com/v2fly/domain-list-community)
- [Loyalsoldier](https://github.com/Loyalsoldier)
