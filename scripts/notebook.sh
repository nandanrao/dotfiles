OPTS=${1:-}

docker run $OPTS -d --rm -v $PWD:/home/jupyter/work -p 8888:8888 nandanrao/pyscience jupyter notebook --ip="*" --NotebookApp.token=''
