# cw-dev-env

&nbsp;
### Apache

To build and run the Apache docker container by itself just use the following commands.  You will need to replace the path before : in -v with a path on your localhost.

```
cd apache
```

_To build apache:_
```
docker build -t cw-dev-env_web .
```

_To run apache:_
```
docker run -d --name web -p 80:80 -v "/c/Development/work/html":/usr/local/apache2/htdocs/ cw-dev-env_web
```

&nbsp;
### Tomcat

To build and run the Tomcat docker container by itself just use the following commands.

```
cd tomat
```

_To build tomcat:_
```
docker build -t cw-dev-env_app .
```

_To run tomcat:_
```
docker run -d --name app -p 8080:8080 --env DEBUG_PORT=9001 -v "/mnt/c/Development/work/logs":/usr/local/tomcat/logs/ cw-dev-env_app
```

_To copy a war to tomcat:_
```
docker cp $PATH_TO_WAR/somewar.war cw-dev-env_app:/usr/local/tomcat/webapps/somewar.war
```


&nbsp;
### Mongo

To build and run the MongoDB docker container by itself just use the following commands. You will need to replace the path before : in -v with a path on your localhost.

```
cd mongodb
```

_To build mongodb:_
```
docker build -t cw-dev-env_mongo .
```

_To run mongodb:_
```
docker run -d --name mongo -p 27017:27017 --env MONGO_ROOT_USERNAME=root --env MONGO_ROOT_PASSWORD=root -v "/c/Development/work/db":/data/backup cw-dev-env_mongo
```

&nbsp;

_Backup Mongo DB_
```
docker exec -w /data cw-dev-env_mongo_1 /data/dump.sh
```

_Restore Mongo DB_
```
docker exec -w /data cw-dev-env_mongo_1 /data/restore.sh
```

&nbsp;

**The following is the meaning of the parameters:**

```
-p HostPort:ContainerPort = Maps the container port to a host port
--name [name] = names the container
-d runs the container detached (in the background)
-v hostPath:containerPath = maps a path on the host to the path on the container
```


&nbsp;
### Startup Compose

_To startup_
```
docker-compose up -d --build
```

&nbsp;
### Shutdown Compose

_To startup_
```
docker-compose down --volumes
```

&nbsp;
### Interactive Shell

_To make an interactive shell on a running container_
```
docker exec -ti <container name> /bin/bash
```

&nbsp;

_Backup Mongo DB from another container_
```
docker run --rm --link running_mongo:mongo -v /c/Development/work/db:/data/backup mongo bash -c ‘mongodump --quiet --gzip --archive=/data/backup/$MONGO_BACKUP_FILENAME.tar.gz --host $MONGO_HOST:$MONGO_PORT’
```

_Restore Mongo DB from another container_
```
docker run --rm --link running_mongo:mongo -v /c/Development/work/db:/data/backup mongo bash -c ‘mongorestore --quiet --gzip --archive=/data/backup/$MONGO_BACKUP_FILENAME.tar.gz --host $MONGO_HOST:$MONGO_PORT’
```

