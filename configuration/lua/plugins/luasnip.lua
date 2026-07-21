local luasnip = require("luasnip")
luasnip.filetype_extend("typescriptreact", { "html" })
luasnip.filetype_extend("javascriptreact", { "html", "javascript" })
require("luasnip.loaders.from_vscode").lazy_load()
