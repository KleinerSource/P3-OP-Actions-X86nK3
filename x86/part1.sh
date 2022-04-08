#!/bin/bash
#=================================================
# 文件名: diy-part1.sh
# 描述: OpenWrt DIY script part 1 (更新 Feed 之前)
# Lisence: MIT
# 作者: P3TERX
# Blog: https://p3terx.com
#=================================================
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加 feed 源
# Xiaorouji Passwall
sed -i '$a src-git xiaorouji https://github.com/WYC-2020/openwrt-passwall.git' feeds.conf.default

# 替换原有 Argon 主题
rm -rf package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06 package/lean/luci-theme-argon

# Rosy 主题
git clone https://github.com/rosywrt/luci-theme-rosy.git package/kleinersource/luci-theme-rosy

# AdGuardHome 的 OpenWrt Luci
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/kleinersource/luci-app-adguardhome

# 网易云音乐完整版
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/kleinersource/luci-app-unblockneteasemusic

# 管控上网行为
# git clone https://github.com/destan19/OpenAppFilter.git package/kleinersource/OpenAppFilter

# SmartDNS
# git clone https://github.com/RealKiro/Luci-SmartDNS.git package/kleinersource/Luci-SmartDNS

# KPR plus+
# git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/kleinersource/luci-app-koolproxyR

# OpenClash
git clone https://github.com/vernesong/OpenClash.git package/kleinersource/OpenClash

# PassWall
git clone https://github.com/WYC-2020/openwrt-passwall.git  package/kleinersource/passwall

# SSRP
git clone -b master https://github.com/fw876/helloworld package/kleinersource/ssrplus

# vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/kleinersource/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/kleinersource/luci-app-vssr

