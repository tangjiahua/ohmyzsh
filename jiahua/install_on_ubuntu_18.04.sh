#!/bin/sh

echo "获取root权限"
sudo -s

echo "更改为清华源"
cp /etc/apt/sources.list /etc/apt/sources.list.bak
/linux_sources/tsinghua_ubuntu_18.04_source.txt > /etc/apt/sources.list 

echo "现在已将sources.list文件修改为了:"
cat /etc/apt/sources.list
apt-get update -y

echo "开始安装zsh"
apt-get install zsh -y

echo "当前SHELL更改为zsh"
chsh -s $(which zsh) -y

echo "安装oh-my-zsh"
git clone --recursive https://github.com/tangjiahua/ohmyzsh.git ~/.oh-my-zsh -y
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc -y

echo "vim配置"
# 复制配置文件
cp ~/.oh-my-zsh/jiahua/.vimrc ~/.vimrc
# 启动配置
source ~/.vimrci -y

echo "配置terminal环境完成～🎉"

