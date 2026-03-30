local lint = require("lint")

lint.linters_by_ft = {
	javascript = { "biome" },
	typescript = { "biome" },
	typescriptreact = { "biome" },
	javascriptreact = { "biome" },
	python = { "pylint" },
	nix = { "nix" },
}
