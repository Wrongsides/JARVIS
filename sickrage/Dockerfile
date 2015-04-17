FROM phusion/baseimage:0.9.16
ENV DEBIAN_FRONTEND noninteractive

# Set correct environment variables
ENV HOME /root
ENV SICKRAGE_VERSION master

# Ensure UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8
ENV LANGUAGE   en_US.UTF-8

# Set user to Jarvis
RUN usermod -u 1000 jarvis
RUN usermod -g 100 jarvis

#Install Sickrage
RUN apt-get -q update && \
    apt-get -qy --force-yes dist-upgrade && \
    apt-get install -qy --force-yes python-cheetah wget tar ca-certificates curl unrar-free  && \
    curl -L https://github.com/SiCKRAGETV/SickRage/tarball/${SICKRAGE_VERSION} -o sickrage.tgz && \
    tar -xvf sickrage.tgz -C /  &&\
    mv /SiCKRAGETV-SickRage-* /sickrage/ &&\
    rm  /sickrage.tgz &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Exports and Volumes
VOLUME ["/config"]
VOLUME ["/data"]
EXPOSE 8081

ADD ./start.sh /start.sh

RUN chmod u+x  /start.sh

CMD ["/start.sh"]
