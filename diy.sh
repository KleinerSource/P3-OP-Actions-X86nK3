#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.10.10.111/g' package/base-files/files/bin/config_generate

# 更改默认主题为Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' package/feeds/luci/luci/Makefile
# git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06 package/kleinersource/luci-theme-argon_new
# sed -i 's/luci-theme-bootstrap/luci-theme-argon_new/g' package/feeds/luci/luci/Makefile

# 复杂的AdGuardHome的openwrt的luci界面
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/kleinersource/luci-app-adguardhome

# 网易云音乐
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/kleinersource/luci-app-unblockneteasemusic

# OpenClash
git clone https://github.com/vernesong/OpenClash.git package/kleinersource/OpenClash

# 管控上网行为
git clone https://github.com/destan19/OpenAppFilter.git package/kleinersource/OpenAppFilter

# Rosy 主题
# git clone https://github.com/rosywrt/luci-theme-rosy.git package/kleinersource/luci-theme-rosy

# SmartDNS
# git clone https://github.com/RealKiro/Luci-SmartDNS.git package/kleinersource/Luci-SmartDNS

# KPR plus+
git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/kleinersource/luci-app-koolproxyR

# 魔改 SSRP+
git clone https://github.com/Leo-Jo-My/luci-app-ssr-plus-Jo.git package/kleinersource/luci-app-ssr-plus-Jo
git clone https://github.com/Leo-Jo-My/my.git package/my
rm -rf package/my/openwrt-dnsforwarder
rm -rf package/my/openwrt-simple-obfs
rm -rf package/my/openwrt-v2ray-plugin

./scripts/feeds update -a
./scripts/feeds install -a