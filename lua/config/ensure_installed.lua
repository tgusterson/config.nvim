local M = {}

-- Define LSPs, linters, and formatters
-- Imported into lsp, linting and formating plugins to save listing multiple times
M.lsp = {
	lua_ls = {},
	eslint = {},
	jsonls = {},
	ts_ls = {},
	marksman = {},
}

M.linters = {
	markdown = { "markdownlint" },
	lua = { "luacheck" },
	html = { "htmlhint" },
	-- javascript = { "eslint_d" },
	-- typescript = { "eslint_d" },
	-- typescriptreact = { "eslint_d" },
	-- javascriptreact = { "eslint_d" },
}

M.formatters = {
	lua = { "stylua" },
	html = { "prettierd" },
	javascript = { "prettierd" },
	typescript = { "prettierd" },
	typescriptreact = { "prettierd" },
	javascriptreact = { "prettierd" },
}

function M.extract_lsp_servers(lsp_table)
	local servers = {}
	for server, _ in pairs(lsp_table) do
		table.insert(servers, server)
	end
	return servers
end

function M.extract_unique_tools(tool_table)
	local unique_tools = {}
	local seen = {}

	for _, tools in pairs(tool_table) do
		for _, tool in ipairs(tools) do
			if not seen[tool] then
				table.insert(unique_tools, tool)
				seen[tool] = true
			end
		end
	end

	return unique_tools
end

M.lsp_list = M.extract_lsp_servers(M.lsp)
M.linters_list = M.extract_unique_tools(M.linters)
M.formatters_list = M.extract_unique_tools(M.formatters)
M.tools_list = vim.tbl_extend("force", M.linters_list, M.formatters_list)

return M
