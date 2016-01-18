FROM mukherjee/netflix_base:v0
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

MAINTAINER Saikat <sm-azure>

COPY assets/install.sh /root

#RUN apt-get update 
#RUN apt-get -y install git openjdk-7-jdk wget unzip 
RUN     cd /root && \
	git clone https://github.com/Netflix/ice.git 
RUN     mv /root/install.sh /root/ice/ 
RUN     chmod +x /root/ice/install.sh && \
	cd /root/ice && \
	/bin/bash -c "source install.sh"

EXPOSE 8080
