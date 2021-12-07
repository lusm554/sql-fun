#!/bin/bash
docker-compose -p sql_fun down

# Remove all changes
if [ "$1" == "--full" ]; then
  docker volume prune --force 
  docker network prune --force 
  # removing postgres data
  rm -rf pgdata
fi
