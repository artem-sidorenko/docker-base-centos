#
# Example for ssl generation
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

COPY assets/etc /etc

#We need openssl for certificate generation
RUN yum -y install openssl; yum clean all
