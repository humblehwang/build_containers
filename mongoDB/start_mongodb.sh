#!/bin/bash

service mongodb start --config mongodb.conf  
while :
do
    ping localhost
done