return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Setup mason (LSP installer)
      require("mason").setup()

      -- Setup mason-lspconfig with auto-install enabled
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })

      -- Automatically setup each installed LSP with default settings
      local lspconfig = require("lspconfig")
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({})
        end,
      })
    end,
  },
}
