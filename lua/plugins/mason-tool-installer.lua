return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          -- Bash
          "bash-language-server",

          -- C / C++
          "clangd",
          "clang-format",
          "codelldb",

          -- Lua
          "lua-language-server",
          "stylua",

          -- Python
          "black",
          "debugpy",
          "pylint",
          "ruff",

          -- Shell
          "shellcheck",
          "shfmt",
        },

        -- Automatically install missing tools on startup
        auto_update = true,
        run_on_start = true,

        debounce_hours = 24,
        integrations = {
          ["mason-lspconfig"] = true,
          ["mason-null-ls"] = true,
          ["mason-nvim-dap"] = true,
        },
      })
    end,
  },
}
