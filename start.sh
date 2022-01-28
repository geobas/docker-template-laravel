#!/bin/bash

docker-compose up -d $1 $2 $3 $4 $5 $6 $7

clear

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo '----------------------------------------------'
echo -e "--          ${GREEN}DOCKER UP AND RUNNING${NC}           --"
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
echo -e "-    Run ${YELLOW}./stop.sh${NC} to stop containers        -"
echo '----------------------------------------------'
echo -e "-    Run ${RED}./delete.sh${NC} to delete containers    -"
echo '----------------------------------------------'
