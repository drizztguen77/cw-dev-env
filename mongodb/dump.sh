#!/bin/bash
#
# @description
# Script used to perform mongodump
# mongodump is the native mongo tool for dump ( https://docs.mongodb.com/manual/reference/program/mongodump/ )
#
# @author bwnyasse
##

set -e

echo "Job Dump started: $(date)"

#DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="/data/backup/$MONGO_BACKUP_FILENAME.tar.gz"

if [ -f $BACKUP_FILE ]
then
    rm -rf BACKUP_FILE
fi

#mongodump --quiet --gzip --host $MONGO_HOST:$MONGO_PORT --archive=$BACKUP_FILE
mongodump --quiet --gzip --archive=$BACKUP_FILE

echo "Job Dump finished: $(date)"
