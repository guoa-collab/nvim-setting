return {
	"neovim/nvim-lspconfig",
	config = function()
		local registry = require("mason-registry")
		local function setup(name, config)
			local ok, package = pcall(registry.get_package, name)
			if ok and not package:is_installed() then
				package:install()
			end
			local lsp = require("mason-lspconfig").get_mappings().package_to_lspconfig[name]

			config.capabilities = require("blink.cmp").get_lsp_capabilities()
			config.on_attach = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end
			vim.lsp.config(lsp, config)
		end
		setup("lua-language-server", {
			settings = {
				Lua = {
					runtime = { version = "LuaJIT" },
					diagnostics = { globals = { "vim" } },
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false,
					},
					telemetry = { enable = false },
				},
			},
		})
		setup("clangd", {})
		setup("pyright", {})
		vim.lsp.enable({
			"lua_ls",
			"clangd",
			"stylua",
			"pyright",
		})
		vim.diagnostic.config({
			update_in_insert = true,
			virtual_text = true,
			underline = true,
			severity_sort = true,
			float = {
				border = "rounded",
				source = "if_many",
			},
		})
	end,
}
