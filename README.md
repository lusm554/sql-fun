# SQL Basics
Some sql practice

## How to use
Make executable:
```shell
chmod +x run.sh shutdown.sh src/connect.sh src/exec.sh
```

Run docker:
```shell
./run.sh
```

Connect to db:
```shell
./src/connect.sh
```

Run sql script:
```shell
./exec.sh test.sql
```
or
```shell
# example
./exec.sh <(echo "select * from pc;")
```

## Prerequirements
- psql
- docker

