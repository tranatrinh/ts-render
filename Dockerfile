FROM ghcr.io/yourok/torrserver:MatriX.136
ENV TS_PORT=8090
ENV TS_DPATH=/tmp/ts
EXPOSE 8090
CMD ["sh", "-c", "mkdir -p /tmp/ts && torrserver -p 8090 -d /tmp/ts"]
