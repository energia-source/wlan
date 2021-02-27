FROM arm64v8/alpine:3.13.2

ENV SSID ""
ENV PSK ""

RUN apk add --no-cache wpa_supplicant

COPY interfaces /etc/network/interfaces
COPY wpa_supplicant.conf /etc/wpa_supplicant.conf
COPY entrypoint.sh .

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ./entrypoint.sh -s "${SSID}" -p "${PSK}"
