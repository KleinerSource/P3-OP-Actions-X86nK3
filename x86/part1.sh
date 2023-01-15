#!/bin/bash
#=================================================
# 文件名: diy-part1.sh
# 描述: OpenWrt DIY script part 1 (更新 Feed 之前)
# Lisence: MIT
# 作者: P3TERX
# Blog: https://p3terx.com
#=================================================
# 添加 feed 源
# Xiaorouji Passwall
# sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' feeds.conf.default
sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' feeds.conf.default

# 替换原有 Argon 主题
rm -rf package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06 package/lean/luci-theme-argon

# Rosy 主题
git clone https://github.com/rosywrt/luci-theme-rosy.git package/kleinersource/luci-theme-rosy

# 网易云音乐完整版
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/kleinersource/luci-app-unblockneteasemusic

# OpenClash
git clone https://github.com/vernesong/OpenClash.git package/kleinersource/OpenClash


# SSRP
# git clone -b master https://github.com/fw876/helloworld package/kleinersource/ssrplus
rm -rf package/helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git package/kleinersource/ssrplus

# helloword
git clone https://github.com/jerrykuku/lua-maxminddb.git package/kleinersource/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/kleinersource/luci-app-vssr

# mosdns
rm -rf feeds/packages/net/v2ray-geodata
git clone https://github.com/sbwml/luci-app-mosdns package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
