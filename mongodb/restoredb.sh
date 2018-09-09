#!/bin/bash

set -e

echo "Job RestoreDB started: $(date)"

if [ -f /data/backup/mongodb.tar.gz ]
then
    echo "uncompressing the backup database"
    tar xvzf /data/backup/mongodb.tar.gz
fi

echo "Job RestoreDB finished: $(date)"
