FROM node:12.18.1

WORKDIR /usr/app
COPY ./* ./

ENV HTTP_PROXY="http://www-proxy.rz.uni-osnabrueck.de:80"
ENV HTTPS_PROXY="http://www-proxy.rz.uni-osnabrueck.de:80"
ENV FTP_PROXY="http://www-proxy.rz.uni-osnabrueck.de:80"
ENV NO_PROXY="127.0.0.1,localhost"

ENV http_proxy="http://www-proxy.rz.uni-osnabrueck.de:80"
ENV https_proxy="http://www-proxy.rz.uni-osnabrueck.de:80"
ENV ftp_proxy="http://www-proxy.rz.uni-osnabrueck.de:80"
ENV no_proxy="127.0.0.1,localhost"

ENV DOCKERVERSION=20.10.8
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz

RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

#RUN sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN npm install --verbose
