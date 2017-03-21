#/bin/sh
if [ -z $1 ]; then
	echo "Please set ssid as first param"
	exit
fi

if [ -z $2 ]; then
	echo "Please set psk as second param"
	exit
fi

nmcli device status
nmcli dev wifi list
nmcli con add con-name $1 ifname wlan0 type wifi ssid $1
nmcli con modify $1 wifi-sec.key-mgmt wpa-psk
nmcli con modify $1 wifi-sec.psk $2
nmcli device status
nmcli con up $1
nmcli device status
