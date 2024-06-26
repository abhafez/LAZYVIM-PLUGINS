return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "<leader>fr", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>sh", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>ss", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>sq", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
    { "<leader>sQ", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
    -- add a keymap to browse plugin files
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
  },
}
