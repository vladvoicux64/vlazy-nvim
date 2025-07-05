return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({})
      vim.api.nvim_set_keymap("n", "<C-\\>", ":ToggleTerm<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("t", "<C-\\>", "<C-\\><C-n>:ToggleTerm<CR>", { noremap = true, silent = true })
    end,
  },
}
