#!/usr/bin/env sh

set -euo pipefail

USER_NAME="$(/usr/local/bin/entrypoint.sh whoami)"

addgroup ${USER_NAME} dotnet

su-exec ${USER_NAME} "$@"
