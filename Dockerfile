FROM ghcr.io/yourok/torrserver:MatriX.136
ENV TS_PORT=8090
ENV TS_DPATH=/tmp/ts
EXPOSE 8090
CMD ["sh", "-c", "mkdir -p /tmp/ts && echo '{\"CacheSize\":134217728,\"ReaderReadAHead\":95,\"PreloadCache\":50,\"UseDisk\":false,\"DisableUpload\":true,\"EnableIPv6\":false,\"ConnectionsLimit\":35}' > /tmp/ts/settings.json && torrserver -p 8090 -d /tmp/ts"]
