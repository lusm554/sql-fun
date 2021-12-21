#!/bin/bash

# connect to computer-company db
psql postgresql://postgres:123@localhost:5432/$1 \
  -c '\timing' \
  -c '\pset null NULL' \
  -f $2

