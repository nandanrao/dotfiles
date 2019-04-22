#!/bin/sh

NAME=$1
NUM=$2
ARGS=$3
kubectl logs $(kubectl get pods -l "app=${NAME}" -o jsonpath="{.items[${NUM}].metadata.name}") $ARGS
