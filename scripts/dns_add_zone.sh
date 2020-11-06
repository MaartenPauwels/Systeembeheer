#! /bin/sh
touch /etc/bind/zones/$1
echo \$TTL 300 >> /etc/bind/zones/$1
echo @ IN SOA ns.$1. host.$1. \( >> /etc/bind/zones/$1
echo 22 \; Serial  >> /etc/bind/zones/$1
echo 900 \; Refresh  >> /etc/bind/zones/$1
echo 120 \; Retry  >> /etc/bind/zones/$1
echo 900 \; Expire  >> /etc/bind/zones/$1
echo 300 \) \; Default TTL  >> /etc/bind/zones/$1
echo \;  >> /etc/bind/zones/$1
echo \;Name servers  >> /etc/bind/zones/$1
echo @       IN      NS      ns.$1.  >> /etc/bind/zones/$1

