Docker base image
=================

Introduction
============

Yes, here is another set of docker base images :) This images are intentended to be used as base images to build other images on top.

Features
========

  - Support for initialization scripts, e.g.
    - Check for DB avaliability before application startup
    - Create directory structure on the mounted volumes if needed
    - Provision databases or file structures if needed
    - Do data migrations on mounted volumes in case of software/image updates
  - Support for multiple daemons via [supervisord](http://supervisord.org/)
  - Couple of predefined volumes for persitent data or logs (s. below)

Images are provides for:

  - Centos 7
  - Ubuntu 14.04

How to use it
=============

Contributions
=============

Please use [GitHub Pull requests][github_pullreq] for this.

License and copyright
=====================
Copyright 2015 Artem Sidorenko and contributors.

See the COPYRIGHT file at the top-level directory of this distribution
and at https://github.com/artem-sidorenko/docker-baseimage/blob/master/COPYRIGHT

[github_pullreq]: https://help.github.com/articles/using-pull-requests
