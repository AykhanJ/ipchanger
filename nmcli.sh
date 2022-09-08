ip=$(ip addr | awk NR==11 | awk -F " " '{print $2}' | awk -F "/" '{print $1}')
echo $ip > /root/kohneip
echo "sizin hal hazirki ip adresiziniz:"
cat /root/kohneip
read -p "yeni ip daxil edin:" yeni

ipa=$(nmcli dev mod wlan0 ipv4.addresses $yeni)
echo $ipa >> /dev/null
echo "ip $yeni -e deyisildi!"
