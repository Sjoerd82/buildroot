# Samba user
echo -e "kungfu\nkungfu" | smbpasswd -s -a root

# Wifi
wpa_supplicant -B -i wlan0 -W -D nl80211, wext -c /etc/wpa_supplicant.conf
wpa_cli -B -i wlan0 -p /var/run/wpa_supplicant -a /sbin/wpa_action
dhcpcd -q -w
ip addr
