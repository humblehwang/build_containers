#!/bin/bash
# Program:
#       This program is to build and run containers from dockerfile


cd /home/Humble/Code/ITRI/PowerWatcher/containers/mongoDB
sudo docker image build -t test_mongodb .

cd /home/Humble/Code/ITRI/PowerWatcher/containers/redis
sudo docker image build -t test_redis .

cd /home/Humble/Code/ITRI/PowerWatcher/PowerWatcher/PowerWatcher_backend_api
sudo docker image build -t test_flask .

cd /home/Humble/Code/ITRI/PowerWatcher/PowerWatcher/PowerWatcher_frontend
sudo docker image build -t test_vue .

cd /home/Humble/Code/ITRI/PowerWatcher/api_system
sudo docker image build -t test_api .

cd /home/Humble/Code/ITRI/PowerWatcher/containers/celery
sudo docker image build -t test_celery .  

cd /home/Humble/Code/ITRI/PowerWatcher/api_system_dev
sudo docker image build -t test_api_dev .

sudo docker run -d -it --privileged  test_api_dev

sudo docker run -d -it --privileged  test_api

sudo docker run -d -it --privileged -p 6379:6379 test_redis

sudo docker run -d -it --privileged -p 7777:7777 test_flask 

sudo docker run -d -it --privileged -p 8000:8000 test_vue 

sudo docker run -d -it --privileged --mount type=bind,source="/home/Humble",target=/home -p 27017:27017 test_mongodb
#mongodb need to start in container, that is we have to go into container and run command

sudo docker run -d -it --privileged --mount type=bind,source="/home/Humble",target=/home -p 5555:5555 test_celery