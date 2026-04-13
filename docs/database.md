# Database Support

This Neovim configuration supports multiple databases via vim-dadbod.

## Supported Databases

| Database | Connection String |
|----------|-------------------|
| PostgreSQL | `postgresql://user:password@host:port/dbname` |
| MongoDB | `mongodb://user:password@host:port/dbname` |
| MySQL | `mysql://user:password@host:port/dbname` |
| SQLite | `sqlite:///path/to/database.db` |

## Connecting

### Quick Connect

Open the database browser:
```vim
:DBUIToggle
```

Connect directly with a connection string:
```vim
:DBUIAddConnection postgresql://user:password@localhost:5432/mydb
```


## Connection Examples

### PostgreSQL
```vim
:DBUIAddConnection postgresql://postgres:password@localhost:5432/mydb
```

### MongoDB
```vim
:DBUIAddConnection mongodb://mongouser:mongopass@127.0.0.1:27017/admin
```

### MySQL
```vim
:DBUIAddConnection mysql://root:password@localhost:3306/testdb
```

### SQLite (local file)
```vim
:DBUIAddConnection sqlite:///home/user/data/mydb.sqlite
```

## Usage

### Browse Databases
```vim
:DBUIToggle
```
For use it write in the buffer and execute the query when saving the file.
