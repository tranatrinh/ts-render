FROM ghcr.io/yourok/torrserver:MatriX.136
ENV TS_PORT=8090
ENV TS_DPATH=/opt/ts
EXPOSE 8090
CMD ["torrserver", "-p", "8090", "-d", "/opt/ts"]
