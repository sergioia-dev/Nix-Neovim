-- LOMBOK_JAR = "${pkgs.lombok}/share/java/lombok.jar"; example of environment variable with nix
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.stdpath("cache") .. "/jdtls/workspace/" .. project_name
local config_dir = vim.fn.stdpath("cache") .. "/jdtls/config/" .. project_name

-- Create both parent directories
vim.fn.mkdir(vim.fn.stdpath("cache") .. "/jdtls/workspace", "p")
vim.fn.mkdir(vim.fn.stdpath("cache") .. "/jdtls/config", "p")

-- Create both directories
vim.fn.mkdir(workspace_dir, "p")
vim.fn.mkdir(config_dir, "p")

local cmd = {
	"jdtls",
	"-configuration",
	config_dir, -- This line was missing
	"-data",
	workspace_dir,
}

if vim.env.LOMBOK_JAR then
	table.insert(cmd, "--jvm-arg=-javaagent:" .. vim.env.LOMBOK_JAR)
end

vim.lsp.config("jdtls", {
	cmd = cmd,
	filetypes = { "java" },
})

if vim.env.JAVA_HOME then
	vim.lsp.enable("jdtls")
end
