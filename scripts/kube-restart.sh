FOLDER=${1:-kube}
kubectl delete -f $FOLDER && kubectl apply -f $FOLDER
