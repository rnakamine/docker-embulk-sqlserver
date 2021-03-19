# docker-embulk-sqlserver
This repository is a sample using sqlserver plugin with embulk on docker.

## Usage

### Sample Configuration
config.yml
```yml
in:
  type: sqlserver
  host: localhost
  user: myuser
  password: ""
  database: my_database
  table: my_table
  select: "col1, col2, col3"
  where: "col4 != 'a'"
  order_by: "col1 DESC"

out:
  type: sqlserver
  host: localhost
  user: myuser
  password: ""
  database: my_database
  table: my_table
  mode: insert
```

### Run Embulk
```sh
$ docker-compose run --rm embulk run config.yml
```
