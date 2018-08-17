# cw-dev-env

&nbsp;
### Apache

To build and run the Apache docker container by itself just use the following commands.  You will need to replace the path before : in -v with a path on your localhost.

```
cd apache
```

_To build apache:_
```
docker build -t cw-apache .
```

_To run apache:_
```
docker run -d --name web -p 80:80 -v "/c/Development/work/html":/usr/local/apache2/htdocs/ cw-apache
```

&nbsp;
### Tomcat

To build and run the Tomcat docker container by itself just use the following commands.

```
cd tomat
```

_To build tomcat:_
```
docker build -t cw-tomcat .
```

_To run tomcat:_
```
docker run -d --name app -p 8080:8080 cw-tomcat
```

&nbsp;
### Mongo

To build and run the MongoDB docker container by itself just use the following commands. You will need to replace the path before : in -v with a path on your localhost.

```
cd mongodb
```

_To build mongodb:_
```
docker build -t cw-mongodb .
```

_To run mongodb:_
```
docker run -d --name mongo -p 27017:27017 -v "/c/Development/work/db":/data/db cw-mongodb
```

&nbsp;

&nbsp;

The following is the meaning of the parameters:

```
-p HostPort:ContainerPort = Maps the container port to a host port
--name [name] = names the container
-d runs the container detached (in the background)
-v hostPath:containerPath = maps a path on the host to the path on the container
```


&nbsp;
### Startup Compose

To startup
```
docker-compose up -d --build
```
