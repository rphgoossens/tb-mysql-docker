FROM mysql:8.0.15
ENV MYSQL_ROOT_PASSWORD=root \
    MYSQL_USER=tb_admin \
    MYSQL_PASSWORD=tb_admin \
    MYSQL_DATABASE=db_terrax
COPY ./create.sql /docker-entrypoint-initdb.d/create.sql

