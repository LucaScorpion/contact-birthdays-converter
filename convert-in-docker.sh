#!/usr/bin/env bash
set -euo pipefail

# TODO
docker run --rm -it -v "$PWD:/data" -w /data python:3 bash
