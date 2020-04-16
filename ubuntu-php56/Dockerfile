FROM ubuntu:18.04

MAINTAINER Nicolas Sosa <nico77@gmail.com>

ENV TZ=America/Argentina/Buenos_Aires
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get install -y php5.6
RUN apt-get install -y php5.6-zip php5.6-curl