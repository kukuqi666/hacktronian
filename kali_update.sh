#!/bin/bash

#   _   _   ___  _____  _   _____________ _____ _   _ _____  ___   _   _ 
#  | | | | / _ \/  __ \| | / /_   _| ___ \  _  | \ | |_   _|/ _ \ | \ | |
#  | |_| |/ /_\ \ /  \/| |/ /  | | | |_/ / | | |  \| | | | / /_\ \|  \| |
#  |  _  ||  _  | |    |    \  | | |    /| | | | . ` | | | |  _  || . ` |
#  | | | || | | | \__/\| |\  \ | | | |\ \\ \_/ / |\  |_| |_| | | || |\  |
#  \_| |_/\_| |_/\____/\_| \_/ \_/ \_| \_|\___/\_| \_/\___/\_| |_/\_| \_/
#
#                   ~ Tools For Hacking by Mr. SAGE ~

clear

# 修改 /etc/ 和 /usr/share/doc 的权限为可执行
sudo chmod +x /etc/
sudo chmod +x /usr/share/doc

# 删除旧版本的 hacktronian
sudo rm -rf /usr/share/doc/hacktronian/
sudo rm -rf /etc/thehackingsage

# 创建新目录并进入
mkdir -p /etc/thehackingsage
cd /etc/thehackingsage

# 从 GitHub 克隆 hacktronian 项目
git clone https://github.com/kukuqi666/hacktronian.git

# 进入项目目录并赋予安装脚本执行权限
cd hacktronian
sudo chmod +x install.sh

# 运行安装脚本
./install.sh

# 清屏完成
clear
