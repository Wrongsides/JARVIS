FROM wrongsides/baseimage
ENV SICKRAGE_VERSION master

#Install Sickrage
RUN apt-get -q update && \
    apt-get -qy --force-yes dist-upgrade && \
    apt-get install -qy --force-yes OpenSSL python-cheetah wget tar ca-certificates curl unrar-free  && \
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

RUN chown -R jarvis:users /sickrage

USER jarvis

CMD ["/start.sh"]
