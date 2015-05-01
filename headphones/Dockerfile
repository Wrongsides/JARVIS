FROM wrongsides/baseimage

#Install Headphones
RUN apt-get update && apt-get install -qy git-core python ca-certificates
RUN git clone https://github.com/rembo10/headphones

#Add start script
ADD ./start.sh /start.sh

RUN chmod u+x /start.sh

CMD ["/start.sh"]
