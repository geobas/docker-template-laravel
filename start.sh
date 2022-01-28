#!/bin/bash

docker-compose up -d $1 $2 $3 $4 $5 $6 $7

clear

echo '----------------------------------------------'
echo '--           DOCKER UP AND RUNNING          --'
echo '----------------------------------------------'

for arg do
    if [ $arg = "app" ]
    then
        echo '-  APP URL: http://localhost:80              -'
    elif [ $arg = "mysql" ]
    then
        echo '-  MySQL is running                          -'
    elif [ $arg = "phpmyadmin" ]
    then
        echo '-  PhpMyAdmin UI: http://localhost:8080      -'
    elif [ $arg = "mongo" ]
    then
        echo '-  MongoDB is running                        -'
    elif [ $arg = "mongo-express" ]
    then
        echo '-  Mongo Express UI: http://localhost:8081   -'
    elif [ $arg = "redis" ]
    then
        echo '-  Redis is running                          -'
    elif [ $arg = "redisinsight" ]
    then
        echo '-  RedisInsight UI: http://localhost:8001    -'
    fi
done

echo '----------------------------------------------'
echo '-    Run ./stop.sh to stop containers        -'
echo '----------------------------------------------'
echo '-    Run ./delete.sh to delete containers    -'
echo '----------------------------------------------'
