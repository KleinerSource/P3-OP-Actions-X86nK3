#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.10.10.111/g' package/base-files/files/bin/config_generate

# 增加软件包
git clone https://github.com/rosywrt/luci-theme-rosy.git package/luci-theme-rosy
git clone https://github.com/AdguardTeam/AdGuardHome.git package/AdGuardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
