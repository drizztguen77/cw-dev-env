#!/bin/bash
#
# @description
# Script used to perform mongorestore
# mongorestore is the native mongo tool for restore ( https://docs.mongodb.com/manual/reference/program/mongorestore/ )
#
# @author drizztguen77
##

set -e

echo "Job Restore started: $(date)"

#DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="/data/backup/$MONGO_BACKUP_FILENAME.tar.gz"

if [ -f $BACKUP_FILE ]
then
    echo "Restoring database from $BACKUP_FILE"

    #mongorestore --quiet --gzip --host $MONGO_HOST:$MONGO_PORT --archive=BACKUP_FILE
    mongorestore --quiet --gzip --archive=$BACKUP_FILE

    echo "Finished restoring database from $BACKUP_FILE"
fi

echo "Job Restore finished: $(date)"
