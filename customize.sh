#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/10.0.0.101/10.0.0.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

# 修改luci-app-aliyundrive-webdav
rm -rf feeds/luci/applications/luci-app-aliyundrive-webdav
rm -rf feeds/packages/multimedia/aliyundrive-webdav

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
