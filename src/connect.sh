#!/bin/bash

# connect to computer-company db
psql postgresql://postgres:123@localhost:5432/$1
