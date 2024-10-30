return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    {
      ";f",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files({
          no_ignore = false,
          hidden = true,
        })
      end,
      desc = "Lists files in your current working directory, respects .gitignore",
    },
    {
      ";r",
      function()
        local builtin = require("telescope.builtin")
        builtin.live_grep()
      end,
      desc =
      "Search for a string in your current working directory and get results live as you type, respects .gitignore",
    },
    {
      "\\\\",
      function()
        local builtin = require("telescope.builtin")
        builtin.buffers()
      end,
      desc = "Lists open buffers",
    },
    {
      ";;",
      function()
        local builtin = require("telescope.builtin")
        builtin.resume()
      end,
      desc = "Resume the previous telescope picker",
    },
    {
      ";e",
      function()
        local builtin = require("telescope.builtin")
        builtin.diagnostics()
      end,
      desc = "Lists Diagnostics for all open buffers or a specific buffer",
    },
    {
      ";s",
      function()
        local builtin = require("telescope.builtin")
        builtin.treesitter()
      end,
      desc = "Lists Function names, variables, from Treesitter",
    },
    -- stylua: ignore
    {
      "<leader>fp",
      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Find Plugin File",
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}

