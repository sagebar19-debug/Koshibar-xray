FROM teddysun/xray:latest
COPY config.json /etc/xray/config.json
ENTRYPOINT sh -c "sed -i s/8080/${PORT}/g /etc/xray/config.json && exec xray run -c /etc/xray/config.json"
