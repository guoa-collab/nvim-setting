return {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = {
              enable = false,
            },
          },
        },
      })
      vim.lsp.config("clangd", {})
      vim.lsp.config("pyright", {})
      vim.lsp.enable({
        "lua_ls",
        "clangd",
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
