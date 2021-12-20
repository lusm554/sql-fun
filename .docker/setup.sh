#!/bin/bash

uname=postgres
pwd=123
port=5432

scripts=./db_scripts

psql "postgresql://$uname:$pwd@localhost:$port/computer-company" -f $scripts/computer-company.sql
psql "postgresql://$uname:$pwd@localhost:$port/" -f $scripts/ships.sql
