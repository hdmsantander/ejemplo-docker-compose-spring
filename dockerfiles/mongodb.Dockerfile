FROM mongo:4.4.6

ENV MONGO_INITDB_ROOT_USERNAME admin
ENV MONGO_INITDB_ROOT_PASSWORD supersecurepassword
ENV MONGO_INITDB_DATABASE mongo

ADD mongo-init.js /docker-entrypoint-initdb.d/

WORKDIR /data
