#!/bin/sh

NAME=$1
NUM=$2
ARGS=$3

until kubectl logs $(kubectl get pods --selector="job-name=${NAME}" -o jsonpath="{.items[${NUM}].metadata.name}") $ARGS; do sleep 1; done
