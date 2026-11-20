FROM ghcr.io/yourok/torrserver:MatriX.136
ENV TS_PORT=8090
ENV TS_DPATH=/tmp/ts
EXPOSE 8090
CMD ["sh", "-c", "mkdir -p /tmp/ts && torrserver -p 8090 -d /tmp/ts & PID=$!; sleep 3; curl -s -X POST http://127.0.0.1:8090/settings -H 'Content-Type: application/json' -d '{\"action\":\"set\",\"sets\":{\"CacheSize\":134217728,\"ReaderReadAHead\":95,\"PreloadCache\":50,\"UseDisk\":false,\"DisableUpload\":true,\"EnableIPv6\":false,\"ConnectionsLimit\":35}}'; wait $PID"]
