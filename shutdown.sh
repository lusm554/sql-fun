#!/bin/bash
docker-compose -p sql_fun down
rm -rf pgdata
docker volume prune --force 
docker network prune --force 
