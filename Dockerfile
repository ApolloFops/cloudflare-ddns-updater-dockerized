FROM alpine:3.22.4

WORKDIR /app

RUN apk add --no-cache bash curl tini

COPY entrypoint.sh /app/entrypoint.sh
COPY cloudflare.sh /app/cloudflare.sh
COPY crontab.txt /etc/periodic/1min/cloudflare-cronjob

RUN crontab /etc/periodic/1min/cloudflare-cronjob

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["./entrypoint.sh"]
