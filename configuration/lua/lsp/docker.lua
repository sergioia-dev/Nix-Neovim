if vim.fn.executable("docker") == 1 or vim.fn.executable("podman") == 1 then
	vim.lsp.enable("docker_language_server")
end
