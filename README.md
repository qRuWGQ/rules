# rules

## 自用规则

### GEOIP 文件

| 文件名 | 下载地址 | 格式
| ----- | ----- | -----
| geoip.dat | [geoip.dat] | V2Ray dat
| geoip.mmdb | [geoip.mmdb] | MaxMind mmdb

| 类别 | 说明
| --- | ---
| `cnv4`    | 中国IPv4
| `cnv6`    | 中国IPv6
| `private` | 私有IP

---

### Mihomo 规则集

| 文件名 | 下载地址 | 格式 | 说明
| --- | --- | --- | ---
| `private.mrs`  | [private] | ipcidr/mrs | 私有IP
| `cnip.mrs`     | [cnip]    | ipcidr/mrs | 中国IPv4
| `direct.mrs`   | [direct]  | domain/mrs | 直连域名
| `gfw.mrs`      | [gfw]     | domain/mrs | 被墙域名
| `applecn.mrs`  | [applecn] | domain/mrs | apple 直连域名

---

### 数据来源

> <https://github.com/Loyalsoldier/clash-rules>  
> <https://github.com/blackmatrix7/ios_rule_script>  

[geoip.dat]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/geoip/geoip.dat
[geoip.mmdb]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/geoip/geoip.mmdb

[cnip]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/cnip.mrs
[direct]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/direct.mrs
[gfw]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/gfw.mrs
[private]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/private.mrs
[applecn]: https://github.com/qRuWGQ/rules/raw/refs/heads/main/rules/mihomo/applecn.mrs
