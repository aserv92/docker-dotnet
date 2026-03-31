FROM chekote/alpine:3.23.3-2026-03-23-14-50-28

ARG VERSION=10.0.105-r0

ENV DOTNET_NOLOGO=true

RUN set -eux; \
    apk update; \
    apk upgrade; \
    apk add --no-cache dotnet10-sdk=${VERSION}; \
    rm -rf /var/cache/apk/*; \
    addgroup -S dotnet; \
    mkdir -p /usr/share/dotnet; \
    chgrp -R dotnet /usr/share/dotnet; \
    chmod -R g+rwX /usr/share/dotnet; \
    chgrp -R dotnet /usr/lib/dotnet; \
    chmod -R g+rwX /usr/lib/dotnet; \
    chmod -R g+s /usr/lib/dotnet

ADD sdk/entrypoint.sh /usr/local/bin/dotnet-sdk-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/dotnet-sdk-entrypoint.sh"]

WORKDIR /workdir

CMD ["dotnet"]
