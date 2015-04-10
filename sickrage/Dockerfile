FROM debian:wheezy
MAINTAINER Tim Haak <tim@haak.co.uk>

ENV DEBIAN_FRONTEND noninteractive
ENV SICKRAGE_VERSION master
ENV LANG en_US.UTF-8
ENV LC_ALL C.UTF-8
ENV LANGUAGE en_US.UTF-8

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

VOLUME /config
VOLUME /data

RUN useradd --no-create-home -g users --uid 1000 sickrage

ADD ./start.sh /start.sh

RUN chmod u+x  /start.sh
USER sickrage

EXPOSE 8081

CMD ["/start.sh"]
