# Mongodb
#
# VERSION 0.1

FROM ubuntu
MAINTAINER Joel Larsson, tilljoel@gmail.com
RUN apt-key adv —keyserver hkp://keyserver.ubuntu.com:80 —recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list
RUN apt-get update -y
RUN apt-get install mongodb-10gen
ENTRYPOINT ["mongod", "-f", "/data/mongodb.conf"]
