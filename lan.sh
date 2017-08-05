#!/bin/bash

# 请将192.168.11修改为你ip对应的网络位即可.

for i in {1..255}
do
(
ping -c2 -t 2 192.168.11.$i > /dev/null 2>&1 
# 修改👆的 ip 地址为你 ip 地址的网络段.主机位即 $i 不变.
if [ $? -eq 0 ];then
echo "192.168.11.$i is up"
exit 0 
else 
exit 0 
fi
)& 
done 
wait 
