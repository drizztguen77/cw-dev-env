#!/bin/bash
 
if [ -f /data/backup/mongodb.tar.gz ]
then
    echo "uncompressing the backup database"
    tar xvzf /data/backup/mongodb.tar.gz
fi
