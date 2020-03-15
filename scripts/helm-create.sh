NAME=$1

helm create $NAME
mv $NAME chart
rm -rf chart/templates/ingress.yaml chart/templates/serviceaccount.yaml chart/templates/service.yaml chart/templates/tests chart/templates/NOTES.txt
# rm -rf chart/templates/serviceaccount.yaml chart/templates/tests
rm -rf chart/values.yaml
touch chart/values.yaml
touch values.yaml
