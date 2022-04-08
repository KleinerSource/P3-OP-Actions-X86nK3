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
#git clone https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon

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

# serverchan
git clone https://github.com/tty228/luci-app-serverchan.git package/kleinersource/luci-app-serverchan

# K3 Screenctrl
rm -rf package/lean/k3screenctrl
rm -rf package/lean/luci-app-k3screenctrl
git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/lean/luci-app-k3screenctrl
git clone https://github.com/lwz322/k3screenctrl_build.git package/lean/k3screenctrl
wget -nv https://github.com/393435992/k3screen-fix-patch/raw/main/k3screen/000-k3screen.patch  -P package/lean/k3screenctrl/patches

# 修改参数
sed -i 's|^TARGET_|# TARGET_|g; s|# TARGET_DEVICES += phicomm_k3|TARGET_DEVICES += phicomm_k3|' target/linux/bcm53xx/image/Makefile

# 添加固件
wget -nv https://github.com/Hill-98/phicommk3-firmware/raw/master/brcmfmac4366c-pcie.bin.asus-dhd24 -O package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin

sed -i "s/hostname='OpenWrt'/hostname='Phicomm-K3'/g" package/base-files/files/bin/config_generate