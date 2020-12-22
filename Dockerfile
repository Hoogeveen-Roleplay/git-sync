FROM alpine/git:1.0.24

WORKDIR /tmp/git

RUN apk --update add tini

# Default to an empty CMD, so we can use it to add seperate args to the binary
CMD [""]

ENTRYPOINT ["/sbin/tini", "--", "/usr/bin/entrypoint"]
