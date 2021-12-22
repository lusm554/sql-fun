# SQL Basics
Some sql practice

## How to use
Make executable:
```shell
chmod +x run.sh shutdown.sh src/connect.sh src/exec.sh .docker/setup.sh
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

Load default dbs(they are in `.docker/db_scripts`):
```shell
./.docker/setup.sh
```

## Prerequirements
- psql
- docker

