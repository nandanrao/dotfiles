#!/bin/sh

docker run --rm -it --net host postgres psql "$@"
