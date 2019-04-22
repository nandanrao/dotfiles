NAME=$1
PORT=$2
KUBE=${3:-kubectl}
$KUBE port-forward $($KUBE get pods -l "app=${NAME}" -o jsonpath="{.items[0].metadata.name}") $PORT
