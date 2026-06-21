ARG BASE_ALPINE_IMAGE="chekote/alpine:latest"

FROM $BASE_ALPINE_IMAGE

ARG VERSION

ENV DOTNET_NOLOGO=true

RUN set -eux; \
    apk update; \
    apk upgrade; \
    apk add --no-cache dotnet10-runtime=${VERSION}; \
    rm -rf /var/cache/apk/*;

WORKDIR /workdir

CMD ["dotnet"]
