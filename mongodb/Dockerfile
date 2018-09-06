# MongoDB image with host-based data volume
FROM mongo:latest
LABEL maintainer="Curtis White <curtisawhite77@gmail.com>"
LABEL description="Image containing MongoDB"

ENV MONGO_INITDB_ROOT_USERNAME=root
ENV MONGO_INITDB_ROOT_PASSWORD=example

#VOLUME ["/data/db"]
VOLUME ["/data/backup"]

WORKDIR /data

CMD ["mongod", "--smallfiles"]
