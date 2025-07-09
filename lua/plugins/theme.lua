return {
  {
    "oneslash/helix-nvim",
    lazy = false, -- load immediately
    priority = 1000, -- load before others
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "helix",
    },
    dependencies = { "oneslash/helix-nvim" }, -- ensure helix-nvim loads first
  },
}
