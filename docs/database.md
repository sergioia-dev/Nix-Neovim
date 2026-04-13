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
:DB ui
```

Connect directly with a connection string:
```vim
:DB postgresql://user:password@localhost:5432/mydb
```

### Save a Default Connection

Add to your init.lua or create `~/.config/nvim-custom/database.lua`:
```lua
vim.g.db = 'postgresql://user:password@localhost:5432/mydb'
```

Then you can connect with just:
```vim
:DB
```

## Connection Examples

### PostgreSQL
```vim
:DB postgresql://postgres:password@localhost:5432/mydb
```

### MongoDB
```vim
:DB mongodb://mongouser:mongopass@127.0.0.1:27017/admin
```

### MySQL
```vim
:DB mysql://root:password@localhost:3306/testdb
```

### SQLite (local file)
```vim
:DB sqlite:///home/user/data/mydb.sqlite
```

## Usage

### Browse Databases
```vim
:DB ui
```

### List Saved Connections
```vim
:DB list
```

### Execute Query
```vim
:DB postgresql://user:pass@localhost/dbname
SELECT * FROM users;
```

### Filter Results
```vim
:DB postgresql://user:pass@localhost/dbname
SELECT * FROM users WHERE active = true;
```

## Keybindings

| Keybinding | Action |
|-----------|--------|
| `<Enter>` | Execute query |
| `e` | Edit query |
| `q` | Close buffer |
| `R` | Refresh results |
| `S` | Save to file |