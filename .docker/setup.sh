#!/bin/bash

uname=postgres
pwd=123
port=5432
scripts=./db_scripts

dbs=("computer" "aero" "inc_out" "painting" "ships")

for db in ${dbs[@]}; do
  psql "postgresql://$uname:$pwd@localhost:$port/$db" -f $scripts/"$db.sql"
done

