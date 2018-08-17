# cw-dev-env

### Apache

To build and run the Apache docker container by itself just use the following commands.  You will need to replace the path before : in -v with a path on your localhost.

    cd apache

    *To build apache:*  docker build -t cw-apache .

    *To run apache:* docker run -d --name web -p 80:80 -v "/c/Development/work/html":/usr/local/apache2/htdocs/ cw-apache


### Tomcat

To build and run the Tomcat docker container by itself just use the following commands.

    cd tomat

    *To build tomcat:*  docker build -t cw-tomcat .

    *To run tomcat:* docker run -d --name app -p 8080:8080 cw-tomcat


### Mongo

To build and run the MongoDB docker container by itself just use the following commands. You will need to replace the path before : in -v with a path on your localhost.

    cd mongodb

    *To build mongodb:*  docker build -t cw-mongodb .

    *To run mongodb:* docker run -d --name mongo -p 27017:27017 -v "/c/Development/work/db":/data/db cw-mongodb

The following is the meaning of the parameters:

    -p HostPort:ContainerPort = Maps the container port to a host port
    --name [name] = names the container
    -d runs the container detached (in the background)
    -v hostPath:containerPath = maps a path on the host to the path on the container




### Startup Compose

To startup

    docker-compose up -d --build

