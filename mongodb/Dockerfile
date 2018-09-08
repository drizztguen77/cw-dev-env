# MongoDB image with host-based data volume
FROM mongo:latest
LABEL maintainer="Curtis White <curtisawhite77@gmail.com>"
LABEL description="Image containing MongoDB"

ENV MONGO_INITDB_ROOT_USERNAME=${MONGO_ROOT_USERNAME}
ENV MONGO_INITDB_ROOT_PASSWORD=${MONGO_ROOT_PASSWORD}

#VOLUME ["/data/db"]
VOLUME ["/data/backup"]

WORKDIR /data

COPY restoredb.sh /data/restoredb.sh
RUN chmod +x /data/restoredb.sh
RUN ls -laF
RUN pwd
RUN /data/restoredb.sh

CMD ["mongod", "--smallfiles"]
