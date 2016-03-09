FROM phusion/baseimage

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y wget python2.7 python-setuptools python-imaging python-mysqldb

RUN mkdir -p /jarvis/installed

WORKDIR /jarvis/installed

RUN wget https://bintray.com/artifact/download/seafile-org/seafile/seafile-server_5.0.5_x86-64.tar.gz

RUN tar -xf seafile-server_5.0.5_x86-64.tar.gz -C /jarvis/

#WORKDIR /jarvis/seafile-server-5.0.5

#RUN ./setup-seafile-mysql.sh

#fill out settings

#update /jarvis/conf/seahub_settings.py to init_command': 'SET default_storage_engine=INNODB'
