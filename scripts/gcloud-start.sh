NAME=$1
PROJECT=${2:-}
gcloud compute $PROJECT instances start $NAME
IP=$(gcloud compute $PROJECT instances describe $NAME | yq r - networkInterfaces.0.accessConfigs.0.natIP)
echo -n "http://${IP}:8888" | xclip -selection clipboard
sleep 5
gcloud compute $PROJECT ssh $NAME
