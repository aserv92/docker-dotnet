FROM chekote/alpine:3.23.3-2026-03-23-14-50-28

ARG VERSION=10.0.5-r0

RUN set -eux; \
    apk update; \
    apk upgrade; \
    apk add --no-cache aspnetcore10-runtime=${VERSION}; \
    rm -rf /var/cache/apk/*;

WORKDIR /workdir

CMD ["dotnet"]
