NAME=$1
PROJECT=${2:-}
IP=$(gcloud compute --project $PROJECT instances describe $NAME | yq r - networkInterfaces.0.accessConfigs.0.natIP)
echo -n "http://${IP}:8888" | xclip -selection clipboard
