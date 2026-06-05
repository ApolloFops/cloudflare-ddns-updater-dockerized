FROM alpine:3.22.4

WORKDIR /app

RUN apk add --no-cache bash curl

COPY . .

CMD ["./cloudflare.sh"]
