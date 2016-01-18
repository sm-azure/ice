FROM ubuntu
MAINTAINER Saikat <sm-azure>

COPY assets/install.sh /root

RUN apt-get update && \
        apt-get -y install git openjdk-7-jdk wget unzip  && \
        cd /root && \
        git clone https://github.com/Netflix/ice.git && \
        mv install.sh /root/ice/ && \
        cd ice && \
        chmod +x install.sh && \
       .\install.sh

EXPOSE 8080
