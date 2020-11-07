#! /bin/sh
dbname=db.$1.maarten-pauwels1.sb.uclllabs.be
touch /etc/bind/zones/$dbname
echo \$TTL 300 > /etc/bind/zones/$dbname
echo @ IN SOA $1.maarten-pauwels1.sb.uclllabs.be. host.maarten-pauwels1.sb.uclllabs.be. \( >> /etc/bind/zones/$dbname
echo 22 \; Serial  >> /etc/bind/zones/$dbname
echo 900 \; Refresh  >> /etc/bind/zones/$dbname
echo 120 \; Retry  >> /etc/bind/zones/$dbname
echo 900 \; Expire  >> /etc/bind/zones/$dbname
echo 300 \) \; Default TTL  >> /etc/bind/zones/$dbname
echo \;  >> /etc/bind/zones/$dbname
echo \;Name servers  >> /etc/bind/zones/$dbname
echo @       IN      NS      ns.maarten-pauwels1.sb.uclllabs.be.  >> /etc/bind/zones/$dbname
echo zone \"$dbname\" \{ >> /etc/bind/named.conf.local
echo   type master\; >> /etc/bind/named.conf.local
echo   file \"/etc/bind/zones/$dbname\"\; >> /etc/bind/named.conf.local
echo \}\; >> /etc/bind/named.conf.local
