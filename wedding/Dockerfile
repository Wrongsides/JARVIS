FROM wrongsides/baseimage

RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash - \
    && add-apt-repository ppa:webupd8team/java \
    && apt-get -q update \
    && echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections \
    && apt-get install -qy oracle-java8-installer build-essential git-core nodejs \
    && git clone https://github.com/Wrongsides/wedding.git

WORKDIR /wedding

#Bower install workaround
RUN npm config set prefix /usr/local && npm install -g bower && echo '{ "allow_root": true }' > /root/.bowerrc

RUN npm install && bower install

EXPOSE 9000:9000

CMD ["./gradlew", "bootRun"]
