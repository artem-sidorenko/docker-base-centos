#
# Example for mysql wait condition and db initialization
# https://github.com/artem-sidorenko/docker-base-centos
#
# Author Artem Sidorenko artem@2realities.com
#
# Copyright 2015 Artem Sidorenko and contributors.
# See the COPYRIGHT file at the top-level directory of this distribution
# and at https://github.com/artem-sidorenko/docker-base-centos/blob/master/COPYRIGHT
#
FROM artemsidorenko/base-centos
MAINTAINER Artem Sidorenko <artem@2realities.com>

#Environment vars
ENV MYSQL_HOST="mysql"
ENV MYSQL_PORT="3306"
ENV MYSQL_DATABASE="mydatabase"
ENV MYSQL_USER="myuser"
ENV MYSQL_PASSWORD="mypass"
ENV MYSQL_INIT_CMD="some_command_for_db_init"

COPY assets/etc /etc

#We need netcat for our mysql wait script and mysql client for db init
RUN yum -y install nmap-ncat mariadb; yum clean all
