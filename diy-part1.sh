#!/bin/bash
#=================================================
# 文件名: diy-part1.sh
# 描述: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# 作者: P3TERX
# Blog: https://p3terx.com
#=================================================
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# Xiaorouji Passwall
# sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default

