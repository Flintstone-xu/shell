#!/bin/bash
#2019/06/29
#功能：截取包含输入字符进程字段的后四位
#思路：1，read读取输入字符；2，awk遍历匹配字符；3，获取匹配字符的后四位
read -p "please imput a filter name :" imput
ps -ef|awk -F' ' '{for (i=1;i<=NF;i++) {if ($i ~ '/$imput/') {print substr($i,length($i)-3)}}}'
