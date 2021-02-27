#!/bin/sh

if [ $(id -u) -ne 0 ]; then
  echo "$0: is not running as root. Aborting."
  exit 1
fi

while getopts s:p: options; do
   case ${options} in
      s) WSSID=${OPTARG} ;;
      p) WPSK=${OPTARG} ;;
   esac
done

RESPONSE="Oops:"

if [ ${#WSSID} -eq 0 ] ; then
  RESPONSE="${RESPONSE} -s: Specifies the wireless ssid."
fi

if [ ${#WPSK} -eq 0 ] ; then
  RESPONSE="${RESPONSE} -p: Specifies the PSK (pre-shared key)."
fi

if [ ${#RESPONSE} -ne 5 ] ; then
  echo "${RESPONSE}"
  exit 2;
fi

unset RESPONSE

sed -i "s/ssid=\".*\"/ssid=\"${WSSID}\"/" /etc/wpa_supplicant.conf
sed -i "s/psk=.*/psk=${WPSK}/" /etc/wpa_supplicant.conf

runner() {
    echo "Stop this container."
    exit 0;
}

trap runner SIGINT SIGQUIT SIGTERM
while true; do
  sleep 32 & wait $!
done
