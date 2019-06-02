#!/bin/sh
# This file is provided by the wikibase/wdqs-frontend docker image.
# It was copied from
# https://github.com/wmde/wikibase-docker/tree/57f4d1509375ace2cef6e2c73210f3934895fb75/wdqs-frontend/latest


# Test if required environment variables have been set
if [ -z "$WIKIBASE_HOST" ]; then
echo "WIKIBASE_HOST is required but isn't set. You should pass it to docker. See: https://docs.docker.com/engine/reference/commandline/run/#set-environment-variables--e---env---env-file";
exit 1;
fi

if [ -z "$WDQS_HOST" ]; then
echo "WDQS_HOST is required but isn't set. You should pass it to docker. See: https://docs.docker.com/engine/reference/commandline/run/#set-environment-variables--e---env---env-file";
exit 1;
fi

set -eu

export DOLLAR='$'
envsubst < /custom-config.json > /usr/share/nginx/html/custom-config.json
envsubst < /templates/default.conf > /etc/nginx/conf.d/default.conf

exec "$@"
