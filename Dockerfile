FROM debian:jessie

# File Author / Maintainer
MAINTAINER Hendrik Luecketieke <opensource@luecke-tieke.de>

USER root
#sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password your_password'
#sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password your_password'
#sudo apt-get -y install mysql-server

RUN apt-get update 
RUN apt-get DEBIAN_FRONTEND=noninteractive install -q -y --no-install-recommends \
        openjdk-8-jdk \
        mysql-server \
        python \
        python-pip \
        glpk \
        libxml-dom-perl

RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y install mysql-server
# RUN mysqladmin -u root password mysecretpasswordgoeshere

RUN  rm -rf /var/lib/apt/lists/*
