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
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' package/feeds/luci/luci/Makefile
# git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06 package/kleinersource/luci-theme-argon_new
# sed -i 's/luci-theme-bootstrap/luci-theme-argon_new/g' package/feeds/luci/luci/Makefile

# 复杂的AdGuardHome的openwrt的luci界面
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/kleinersource/luci-app-adguardhome
# git clone https://github.com/AdguardTeam/AdGuardHome.git package/kleinersource/AdGuardHome

# KPR plus+
# git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/kleinersource/luci-app-koolproxyR

# 网易云音乐
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/kleinersource/luci-app-unblockneteasemusic

# 网易云音乐mini
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-mini.git package/kleinersource/luci-app-unblockneteasemusic-mini

# 管控上网行为
git clone https://github.com/destan19/OpenAppFilter.git package/kleinersource/OpenAppFilter

# Rosy 主题
git clone https://github.com/rosywrt/luci-theme-rosy.git package/kleinersource/luci-theme-rosy

# SmartDNS
git clone https://github.com/RealKiro/Luci-SmartDNS.git package/kleinersource/Luci-SmartDNS
