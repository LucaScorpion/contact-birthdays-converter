#!/usr/bin/env sh
set -eu

/root/convert.sh && crond -f -d 8
