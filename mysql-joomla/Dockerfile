FROM mysql:5.7
ENV MYSQL_DATABASE=joomla_db
# Copiem MySQL dump-ul in calea de unde o sa il refaca imaginea Docker de mysql
COPY backup.sql /docker-entrypoint-initdb.d/
