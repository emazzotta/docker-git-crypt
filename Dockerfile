FROM alpine:edge

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL maintainer="hello@mazzotta.me" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="Docker git-cryot" \
    org.label-schema.description="Docker for git-cryot" \
    org.label-schema.url="https://github.com/emazzotta/docker-git-crypt" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/emazzotta/docker-git-crypt" \
    org.label-schema.vendor="Emanuele Mazzotta" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

RUN apk --update add \
   git-crypt \
   gnupg \
   && rm -rf /var/cache/apk/*

ENTRYPOINT ["git-crypt"]
