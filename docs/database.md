# Database Support

This Neovim configuration supports multiple databases via vim-dadbod.

## Supported Databases

| Database | Connection String |
|----------|-------------------|
| PostgreSQL | `postgresql://user:password@host:port/dbname` |
| MySQL | `mysql://user:password@host:port/dbname` |
| MariaDB | `mysql://user:password@host:port/dbname` |
| SQLite | `sqlite:///path/to/database.db` |
| MongoDB | `mongodb://user:password@host:port/dbname` |
| Redis | `redis://user:password@host:port` |
| Microsoft SQL Server | `sqlserver://user:password@host:port/dbname` |
| Oracle | `oracle://user:password@host:port/dbname` |
| Snowflake | `snowflake://user:password@account/dbname` |
| BigQuery | `bigquery://project_id/dataset` |
| ClickHouse | `clickhouse://user:password@host:port/dbname` |
| DuckDB | `duckdb:///path/to/database.db` |
| Apache Impala | `impala://host:port/dbname` |
| Presto / Trino | `presto://user@host:port/catalog/schema` |
| Amazon Athena | `athena://dbname?region=us-east-1` |
| jq (query JSON files) | `jq:///path/to/file.json` |
| osquery | `osquery://` |

> vim-dadbod supports many more via its extensible driver model.

## Opening the Browser

```vim
:DBUIToggle
```

This toggles the database sidebar on the right.

## Adding a Connection

```vim
:DBUIAddConnection postgresql://user:password@localhost:5432/mydb
```

### PostgreSQL
```vim
:DBUIAddConnection postgresql://postgres:password@localhost:5432/mydb
```

### MySQL / MariaDB
```vim
:DBUIAddConnection mysql://root:password@localhost:3306/testdb
```

### MongoDB
```vim
:DBUIAddConnection mongodb://mongouser:mongopass@127.0.0.1:27017/admin
```

### SQLite (local file)
```vim
:DBUIAddConnection sqlite:///home/user/data/mydb.sqlite
```

### Redis
```vim
:DBUIAddConnection redis://localhost:6379
```

### SQL Server
```vim
:DBUIAddConnection sqlserver://sa:password@localhost:1433/mydb
```

## Usage

### Browse databases
```vim
:DBUIToggle
```

The sidebar shows all saved connections. Expand a connection to see tables, views, and schemas. Write SQL queries in the buffer and execute them with `<leader>;` or save the file (autocommand).

### Execute query on save
By default, vim-dadbod will execute the current buffer's SQL when the file is saved (requires an active connection).
