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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

if [ ! -d "./package/myapp" ];then
mkdir ./package/myapp
fi
cd ./package/myapp

echo "luci-app-mentohust"
if [ ! -d "./luci-app-mentohust" ];then
git clone https://github.com/BoringCat/luci-app-mentohust.git
else
cd luci-app-mentohust
git pull
cd ..
fi

echo "luci-app-mentohust Depends"
if [ ! -d "./MentoHUST-OpenWrt-ipk" ];then
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git
else
cd MentoHUST-OpenWrt-ipk
git pull
cd ..
fi

echo "luci-theme-argon"
if [ ! -d "./luci-theme-argon" ];then
git clone https://github.com/jerrykuku/luci-theme-argon.git
else
cd luci-theme-argon
git pull
cd ..
fi

echo "luci-theme-atmaterial"
if [ ! -d "./luci-theme-atmaterial" ];then
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
else
cd luci-theme-atmaterial
git pull
cd ..
fi

echo "luci-theme-argon-mc"
if [ ! -d "./luci-theme-argon-mc" ];then
git clone https://github.com/sypopo/luci-theme-argon-mc.git
else
cd luci-theme-argon-mc
svn update
cd ..
fi


echo "luci-theme-rosy"
if [ ! -d "./luci-theme-rosy" ];then
git clone https://github.com/rosywrt/luci-theme-rosy.git
else
cd luci-theme-rosy
git pull
cd ..
fi

echo "luci-theme-opentomcat"
if [ ! -d "./luci-theme-opentomcat" ];then
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git
else
cd luci-theme-opentomcat
git pull
cd ..
fi

echo "luci-theme-darkmatter"
if [ ! -d "./luci-theme-darkmatter" ];then
git clone https://github.com/apollo-ng/luci-theme-darkmatter.git
else
cd luci-theme-darkmatter
svn update
cd ..
fi

echo "luci-app-pptp-server"
if [ ! -d "./luci-app-pptp-server" ];then
git clone https://github.com/xkstudio/luci-app-pptp-server.git
else
cd luci-app-pptp-server
git pull
cd ..
fi

echo "luci-app-serverchan"
if [ ! -d "./luci-app-serverchan" ];then
git clone https://github.com/tty228/luci-app-serverchan.git
else
cd luci-app-serverchan
git pull
cd ..
fi

echo "luci-app-rclone"
if [ ! -d "./luci-app-rclone" ];then
git clone https://github.com/ElonH/Rclone-OpenWrt.git
else
cd luci-app-rclone
git pull
cd ..
fi

echo "luci-app-kcptun"
if [ ! -d "./luci-app-kcptun" ];then
git clone https://github.com/kuoruan/luci-app-kcptun.git package/luci-app-kcptun
else
cd luci-app-kcptun
git pull
cd ..
fi

echo "luci-app-ssr-plus"
if [ ! -d "./luci-app-ssr-plus" ];then
git clone https://github.com/fw876/helloworld.git
cd luci-app-ssr-plus
git pull
cd ..
fi

# 返回到myapp文件夹
cd ..

pwd
