#!/bin/bash
#=================================================
# 文件名: diy-part2.sh
# 描述: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# 作者: P3TERX
# Blog: https://p3terx.com
#=================================================
# 修改默认 IP
# sed -i 's/192.168.1.1/10.10.10.111/g' package/base-files/files/bin/config_generate

# 修改编译信息
sed -i 's/%D %V, %C/%D %V, %C, Build by KleinerSource/g' package/base-files/files/etc/banner

# 更改默认主题为 Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' package/feeds/luci/luci/Makefile
