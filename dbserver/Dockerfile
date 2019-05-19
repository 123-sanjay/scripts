FROM ubuntu:16.04
RUN export DEBIAN_FRONTEND=noninteractive
ENV MYSQL_ROOT_PASS root
RUN echo "mysql-server mysql-server/root_password password ${MYSQL_ROOT_PASS}" | debconf-set-selections  
RUN echo "mysql-server mysql-server/root_password_again password ${MYSQL_ROOT_PASS}" | debconf-set-selections
RUN apt-get update
RUN apt-get -y install mysql-server supervisor
RUN sleep 60 && mkdir -p /var/run/mysqld/ && touch /var/run/mysqld/mysqld.sock && touch /var/run/mysqld/mysqld.pid
RUN sleep 60 && chmod -R 777 /var/run/mysqld/
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
#RUN sleep 15 && mysql -u root -p'root' -e "create database magento223"
EXPOSE 3306

