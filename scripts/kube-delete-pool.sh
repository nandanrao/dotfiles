POOL=$1
GRACE_PERIOD=$2

for node in $(kubectl get nodes -l cloud.google.com/gke-nodepool=$POOL -o=name); do
  kubectl cordon "$node";
done

for node in $(kubectl get nodes -l cloud.google.com/gke-nodepool=$POOL -o=name); do
  kubectl drain --force --ignore-daemonsets --delete-local-data --grace-period=$GRACE_PERIOD "$node";
done
