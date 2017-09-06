#!/bin/bash
echo -e "1: 192.168.1\n2: 192.168.0\n3: 10.0.0\n4: 10.0.1"
read -p "input hosts field or number( example 192.168.1 ,do not need a dot behind):" j
case "$j" in 
    1)
        j='192.168.1'
        ;;
    2)
        j='192.168.0'
        ;;
    3)
        j='10.0.0'
        ;;
    4)
        j='10.0.1'
        ;;
    *)
        break
        ;;
esac
for i in {1..255}
do
(
ping -c2 -t 2 ${j}.$i > /dev/null 2>&1 
if [ $? -eq 0 ];then
    echo "${j}.$i is up"
exit 0 
else 
exit 0 
fi
)& 
done 
wait 
