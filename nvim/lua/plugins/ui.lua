return {
  "nvim-lualine/lualine.nvim",
  enabled = true,  -- Set to `true` to enable lualine or `false` to disable it
  config = function()
    require("lualine").setup {
      options = {
        icons_enabled = true,
        theme = "auto",          -- Automatically adapts to the current colorscheme
        component_separators = "|",
        section_separators = "",
        disabled_filetypes = { "NvimTree", "lazy","neo-tree" },  -- Disable lualine on specific filetypes
      },
      sections = {
        lualine_a = { "mode" },                    -- Displays the current mode (e.g., NORMAL, INSERT)
        lualine_b = { "branch", "diff" },          -- Git branch and diff status (added, modified, removed)
        lualine_c = { "filename" },                -- Current file name with relative path
        lualine_x = {
          { "diagnostics",                         -- Shows diagnostics (errors, warnings, hints, info)
            sources = { "nvim_diagnostic" },
            sections = { "error", "warn", "info", "hint" },
            symbols = { error = " ", warn = " ", info = " ", hint = " " },
            colored = true,
            update_in_insert = false,
          },
          "encoding", "fileformat", "filetype"     -- Shows encoding, file format (unix, dos), and file type
        },
        -- lualine_y = { "progress" },                -- Shows current progress in the file
        lualine_y = { },                -- Shows current progress in the file
        lualine_z = { "location" }                 -- Displays the cursor position (line, column)
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },                -- Only show filename in inactive windows
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {}
      },
      extensions = {"nvim-tree", "quickfix" },    -- Extend lualine for specific plugins or features
    }
  end,
}

