local mason = require("mason")

mason.setup ({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  }
})

local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup ({
  ensure_installed = { "sumneko_lua" },
})

local lspconfig = require("lspconfig")
-- local opts = {
--   on_attach = lspconfig.on_attach,
--   capabilities = lspconfig.capabilities,
-- }

mason_lspconfig.setup_handlers({
  function(server_name) -- Default handler (optional)
    lspconfig[server_name].setup {
      -- on_attach = opts.on_attach,
      -- capabilities = opts.capabilities,
    }
  end
})
