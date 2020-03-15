#!/bin/sh

docker run --rm -it --net host mysql mysql "$@"
