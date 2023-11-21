require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" , "pyright", "clangd", "denols"}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
require("lspconfig").bashls.setup {
  capabilities = capabilities,
}
require("lspconfig").pyright.setup {
  capabilities = capabilities,
}

require("lspconfig").clangd.setup {
  capabilities = capabilities,
}

require("lspconfig").denols.setup {
  capabilities = capabilities,
}

local lspconfig = require'lspconfig'
lspconfig.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "build";
    index = {
      threads = 0;
    };
    clang = {
      excludeArgs = { "-frounding-math"} ;
    };
  }
}

