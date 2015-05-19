Docker base centos image
========================

Introduction
============

Yes, here is another docker base image :) This image is intentended to be used as base image to build other images on top.

This image is based on [centos/centos7](https://registry.hub.docker.com/_/centos/) image, see [docker-base-ubuntu](https://github.com/artem-sidorenko/docker-base-ubuntu) for a similar image with ubuntu.

Features
========

  - Support for initialization scripts, e.g.
    - Check for DB avaliability before application startup
    - Create directory structure on the mounted volumes if needed
    - Provision databases or file structures if needed
    - Run data migrations on mounted volumes in case of software/image updates
  - Support for multiple daemons via [supervisord](http://supervisord.org/)
  - Set of predefined volumes for persitent data or logs (s. below)

How to use it
=============
  - Create a new image based on `artemsidorenko/base-centos`
  - Create and add the according files for initialization or supervisord configuration. See examples below for it

Example Dockerfile can look likes this

    FROM artemsidorenko/base-centos
    MAINTAINER Artem Sidorenko <artem@2realities.com>
    
    COPY assets/etc /etc
    ...


Folder structure
================

  - `/var/lib/docker-state` - mounted volume - some persistent data, e.g. generated encryption keys
  - `/var/log` - mounted volume - logs
  - `/etc/docker-init/start.d` - location for initialization scripts, see examples below
  - `/etc/supervisor.d` - location for supervisor daemon configs, see examples below

Examples
========

Contributions
=============

Please use [GitHub Pull requests][github_pullreq] for this.

License and copyright
=====================
Copyright 2015 Artem Sidorenko and contributors.

See the COPYRIGHT file at the top-level directory of this distribution
and at https://github.com/artem-sidorenko/docker-base-centos/blob/master/COPYRIGHT

[github_pullreq]: https://help.github.com/articles/using-pull-requests
