#
# docker base image
# https://github.com/artem-sidorenko/docker-base-centos
#
# Author Artem Sidorenko artem@2realities.com
#
# Copyright 2015 Artem Sidorenko and contributors.
# See the COPYRIGHT file at the top-level directory of this distribution
# and at https://github.com/artem-sidorenko/docker-base-centos/blob/master/COPYRIGHT
#
FROM centos:centos7
MAINTAINER Artem Sidorenko <artem@2realities.com>

VOLUME /var/log
VOLUME /var/lib/docker-state

RUN yum -y update; yum -y install net-tools hostname epel-release yum-utils; yum clean all

RUN yum -y install supervisor; yum clean all

COPY assets/etc /etc

CMD ["/etc/docker-init/start"]
