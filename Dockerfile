FROM alpine:3.11
RUN apk update && apk add squid squid-lang-ja squid-doc man

COPY squid.conf /etc/squid/squid.conf

WORKDIR /etc/
CMD ["squid", "-N"]
