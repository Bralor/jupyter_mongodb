#!/bin/bash

DIR="config"
ENV_DB="mongodb.env"
ENV_WORK="jupyter.env"

if [[ -d "$DIR" ]];
then
    echo "INFO: Folder $DIR already exists .."
    echo "INFO: Checking the configurations inside .."

else
    echo "INFO: Creating folder $DIR .."
    mkdir "$DIR"
fi

if [[ -f "$DIR/$ENV_DB" ]];
then
    echo "INFO: File $ENV_DB already exists"
else
    echo "INFO: Creating config file $ENV_DB"
    echo -e "MONGO_INITDB_ROOT_USERNAME=<empty>
MONGO_INITDB_ROOT_PASSWORD=<empty>" > $DIR/$ENV_DB
fi

if [[ -f "$DIR/$ENV_WORK" ]];
then
    echo "INFO: File $ENV_WORK already exists"
else
    echo "INFO: Creating config file $ENV_WORK"
    echo -e "JUPYTER_TOKEN=<empty>" > $DIR/$ENV_WORK
fi

echo "INFO: do not forget to change the credentials in $DIR/$ENV .."
