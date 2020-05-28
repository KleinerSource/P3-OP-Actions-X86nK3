#!/bin/bash
#=================================================
# 说明: DIY 脚本
# Lisence: MIT
# 文件名: diy-part1.sh
# 描述: OpenWrt DIY script part 1 (Before Update feeds)
# 作者: P3TERX
# Blog: https://p3terx.com
#=================================================
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default