OPTS=${1:-}

docker run $OPTS -d --rm -v $PWD:/home/jovyan/work -p 8888:8888 jupyter/datascience-notebook start-notebook.sh --NotebookApp.token=''
