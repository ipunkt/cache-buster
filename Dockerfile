FROM alpine:3.3
COPY entrypoint.sh /usr/local/bin/
RUN apk add --no-cache curl
ENTRYPOINT ["/bin/sh", "/usr/local/bin/entrypoint.sh"]
