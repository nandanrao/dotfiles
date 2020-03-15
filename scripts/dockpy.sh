#!/bin/sh

if [ -z "$1" ]
   then
     echo "Needs a name!"
     exit 1
fi

NAME=$1

docker stop python-dev

docker build -t $NAME .

docker run --net host -v /tmp:/tmp -v $PWD:/home --rm --name python-dev -d -i $NAME
