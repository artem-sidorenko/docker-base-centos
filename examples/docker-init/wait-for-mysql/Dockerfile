#
# Example for mysql wait condition
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

COPY assets/etc /etc

#We need netcat for our mysql wait script
RUN yum -y install nmap-ncat; yum clean all
