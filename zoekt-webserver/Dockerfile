FROM alpine:3.17.2 AS zoekt-webserver
LABEL maintainer "Mike Smith <mike.smith@embl.de>"

# We need go, git, bash, and musl-dev for zoekt-git-index
RUN apk add --no-cache go git 

RUN go install github.com/google/zoekt/cmd/zoekt-webserver@latest



FROM alpine:3.17.2

COPY --from=zoekt-webserver /root/go/bin/* /usr/local/bin/

RUN set -x ; \
  addgroup -g 82 -S www-data ; \
  adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1
USER www-data

ADD ./templates /var/templates

EXPOSE 8080

ENTRYPOINT ["zoekt-webserver", "-listen", ":8080", "-index", "/var/zoekt", "-template_dir", "/var/templates"]
