return {

  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- Set the colorscheme after the plugin is loaded
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
