# rules

## 自用规则

### GEOIP 文件

| 文件名 | 下载地址 | 格式
| ----- | ----- | -----
| geoip.dat  | [geoip.dat]  | V2Ray dat
| geoip.mmdb | [geoip.mmdb] | MaxMind mmdb

| 类别 | 说明
| --- | ---
| `cnv4`    | 中国IPv4
| `cnv6`    | 中国IPv6
| `private` | 私有IP

---

### GEOSITE 文件

| 文件名 | 下载地址 | 格式
| ----- | ----- | -----
| `geosite.dat` | [geosite] | V2Ray dat

| 类别 | 说明
| --- | ---
| `cn`      | 中国域名
| `direct`  | 直连域名
| `gfw`     | 被墙域名
| `adblock` | 广告域名
| `private` | 私有域名

---

### Mihomo 规则集

| 文件名 | 下载地址 | 格式 | 说明
| --- | --- | --- | ---
| `private_ip.mrs`     | [private_ip]     | `ipcidr/mrs` | 私有IP
| `private_domain.mrs` | [private_domain] | `domain/mrs` | 私有域名
| `china_ip.mrs`       | [china_ip]       | `ipcidr/mrs` | 中国IPv4
| `china_domain.mrs`   | [china_domain]   | `domain/mrs` | 中国域名
| `direct.mrs`         | [direct]         | `domain/mrs` | 直连域名
| `gfw.mrs`            | [gfw]            | `domain/mrs` | 被墙域名
| `adblock.mrs`        | [adblock]        | `domain/mrs` | 广告域名

---

### 数据来源和工具

> <https://github.com/Loyalsoldier/clash-rules>  
> <https://github.com/blackmatrix7/ios_rule_script>  
> <https://github.com/217heidai/adblockfilters>  
> <https://github.com/v2fly/domain-list-community>  

[geoip.dat]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/geoip/geoip.dat
[geoip.mmdb]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/geoip/geoip.mmdb
[geosite]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/geosite/geosite.dat

[china_ip]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/china_ip.mrs
[china_domain]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/china_domain.mrs
[direct]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/direct.mrs
[gfw]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/gfw.mrs
[private_ip]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/private_ip.mrs
[private_domain]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/private_domain.mrs
[adblock]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/adblock.mrs
