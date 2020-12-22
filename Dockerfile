FROM alpine/git:1.0.24

WORKDIR /tmp/git

RUN apk --update add tini

ADD entrypoint /usr/bin/entrypoint
RUN chmod +x /usr/bin/entrypoint

# Default to an empty CMD, so we can use it to add seperate args to the binary
CMD [""]

ENTRYPOINT ["/sbin/tini" ,"--", "/usr/bin/entrypoint"]
