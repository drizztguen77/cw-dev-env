# cw-dev-env

### Apache

To build apache:  docker build -t cw-apache .

To run apache: docker run -d --name web -p 80:80 -v "/c/Development/work/html":/usr/local/apache2/htdocs/ cw-apache


### Tomcat

To build apache:  docker build -t cw-tomcat .

To run apache: docker run -d --name app -p 8080:8080 cw-tomcat


### Mongo

To build apache:  docker build -t cw-mongodb .

To run apache: docker run -d --name mongo -p 27017:27017 -v "/c/Development/work/db":/data/db cw-mongodb


    -p HostPort:ContainerPort = Maps the container port to a host port
    --name [name] = names the container
    -d runs the container detached (in the background)
    -v hostPath:containerPath = maps a path on the host to the path on the container




### Startup Compose

docker-compose up -d --build

