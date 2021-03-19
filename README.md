# docker-embulk-sqlserver
This repository is a sample using sqlserver plugin with embulk, it works on Docker.

## Usage

Sample Configuration (config.yml)
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

You can run embulk from docker-compose
```sh
$ docker-compose run --rm embulk run config.yml
```

### Plugin to use
Please refer to here for detailed settings
- [embulk\-input\-jdbc/embulk\-input\-sqlserver at master · embulk/embulk\-input\-jdbc](https://github.com/embulk/embulk-input-jdbc/tree/master/embulk-input-sqlserver)
- [embulk\-output\-jdbc/embulk\-output\-sqlserver at master · embulk/embulk\-output\-jdbc](https://github.com/embulk/embulk-output-jdbc/tree/master/embulk-output-sqlserver)
