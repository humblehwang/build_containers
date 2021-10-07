FROM ubuntu:20.04
MAINTAINER Samuel Hwang <z8630076@yahoo.com.tw>


RUN apt-get update -y
RUN apt-get install python3.8 -y
RUN apt install python3.8-distutils -y
RUN apt install python3-pip -y
RUN apt-get install vim -y 
RUN apt-get install iputils-ping -y

RUN apt-get update \
    &&  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
    
RUN TZ=Asia/Taipei \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata 



COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY start_celery.sh start_celery.sh

ENTRYPOINT bash start_celery.sh