#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Modify default IP
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

#6.添加自动挂载磁盘脚本
#mkdir -p files/etc/hotplug.d/block && wget -O files/etc/hotplug.d/block/30-usbmount https://raw.githubusercontent.com/ficheny/P3TERX_Actions-OpenWrt/main/files/etc/hotplug.d/block/30-usbmount && chmod 755 files/etc/hotplug.d/block/30-usbmount



#rm -rf package/lean/autosamba && git clone https://github.com/sirpdboy/autosamba.git package/autosamba

#rm -rf package/lean/autocore && git clone https://github.com/sirpdboy/myautocore.git package/myautocore

git clone https://github.com/kenzok8/small-package.git package/small-package
git clone https://github.com/linkease/istore.git package/istore
#sirpdboy
#git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
#git clone https://github.com/sirpdboy/luci-app-advanced.git package/luci-app-advanced
#git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
#git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata
#git clone https://github.com/sirpdboy/luci-app-poweroffdevice.git package/luci-app-poweroffdevice
#git clone https://github.com/sirpdboy/luci-app-autotimeset.git package/luci-app-autotimeset


#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

#添加额外非必须软件包
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/vernesong/OpenClash.git package/OpenClash

#添加smartdns
git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
