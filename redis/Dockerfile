FROM ubuntu:20.04
MAINTAINER Samuel Hwang <z8630076@yahoo.com.tw>

RUN apt-get update -y
RUN apt install redis-server -y
RUN apt-get update \
    &&  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
    
RUN TZ=Asia/Taipei \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata 

#EXPOSE 6379
CMD ["redis-server", "--protected-mode", "no"]