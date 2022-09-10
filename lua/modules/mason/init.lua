local pk_status, pk = pcall(require, "packer")
if not pk_status then
  return
end

pk.use ({ "williamboman/mason.nvim" })
pk.use ({ "williamboman/mason-lspconfig.nvim" })


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

local wk_status, wk = pcall(require, "which-key")
if not wk_status then
    return
end
wk.register({
  l = {
      name = "+LSP",
      a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
      d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition"},
      D = {
        "<cmd>Telescope diagnostics<cr>",
        "Document Diagnostics",
      },
      w = {
        "<cmd>Telescope lsp_workspace_diagnostics<cr>",
        "Workspace Diagnostics",
      },
      -- f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
      h = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "hover"},
      i = { "<cmd>LspInfo<cr>", "Info" },
      I = { "<cmd>Mason<cr>", "Installer Info" },
      j = {
        "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
        "Next Diagnostic",
      },
      k = {
        "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
        "Prev Diagnostic",
      },
      l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
      q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
      r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
    },
}, { prefix = "<Leader>" })
