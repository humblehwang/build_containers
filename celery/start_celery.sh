#!/bin/bash
cd "/home/Code/ITRI/PowerWatcher/api_system_dev"
celery multi start -A tasks  worker1 worker2 worker3  --loglevel=info
cd "/home/Code/ITRI/PowerWatcher/api_system_dev"
celery -A tasks flower --port=5555 --broker=amqp://140.113.73.56:6379/

