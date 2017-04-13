#!/bin/bash
# file name : today.sh
# 执行命令为 . ./today.sh
# 注意，第一个点是shell的内建命令，表示在当前shell中运行，这样直接进入到$today目录了
# 此文件不可修改，因为 chattr +i today.sh
# 如要修改则执行 chattr -i today.sh

# 今天的日期，格式为：091814
today=`date "+%D" | tr -d '/'`
echo "today is $today"

cd ~/demo/

# 目录不存在就创建
[ ! -e $today ] && mkdir $today

# 进入到today目录
cd $today

