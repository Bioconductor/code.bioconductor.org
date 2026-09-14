FROM golang:1.25-alpine3.21 AS zoekt-webserver
LABEL maintainer "Mike Smith <mike.smith@embl.de>"

RUN apk add --no-cache git 

RUN go install github.com/sourcegraph/zoekt/cmd/zoekt-webserver@latest

FROM alpine:3.21

COPY --from=zoekt-webserver /root/go/bin/* /usr/local/bin/

RUN set -x ; \
  addgroup -g 101 -S nginx ; \
  adduser -u 101 -D -S -G nginx nginx && exit 0 ; exit 1
USER nginx

ADD ./templates /var/templates

EXPOSE 8080

ENTRYPOINT ["zoekt-webserver", "-listen", ":8080", "-index", "/var/zoekt", "-template_dir", "/var/templates"]