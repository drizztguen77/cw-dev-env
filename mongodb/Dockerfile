# MongoDB image with host-based data volume
FROM mongo:latest
LABEL maintainer="Curtis White <curtisawhite77@gmail.com>"
LABEL description="Image containing MongoDB"

ENV MONGO_INITDB_ROOT_USERNAME=${MONGO_ROOT_USERNAME}
ENV MONGO_INITDB_ROOT_PASSWORD=${MONGO_ROOT_PASSWORD}

#VOLUME ["/data/db"]
VOLUME ["/data/backup"]

WORKDIR /data

# Dump
COPY ./dump.sh .
RUN sed -i 's/\r$//' /data/dump.sh && chmod +x /data/dump.sh

# Restore
COPY ./restore.sh .
RUN sed -i 's/\r$//' /data/restore.sh && chmod +x /data/restore.sh

CMD ["mongod", "--smallfiles"]
