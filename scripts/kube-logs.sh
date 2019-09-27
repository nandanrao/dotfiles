#!/bin/sh

NAME=$1
NUM=$2
ARGS=$3

until kubectl logs $(kubectl get pods -l "app=${NAME}" -o jsonpath="{.items[${NUM}].metadata.name}") $ARGS; do sleep 1; done
