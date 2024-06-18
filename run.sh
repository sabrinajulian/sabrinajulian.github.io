#!/bin/bash
set -Eeuo pipefail

sudo podman run --rm \
    --volume="$PWD:/srv/jekyll:Z" \
    --publish "127.0.0.1:4000:4000" \
    jekyll/jekyll:3.8 \
    jekyll serve
