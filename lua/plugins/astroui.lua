
-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing
---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- This enables built-in AstroVim transparency support
    transparent_background = true,

    -- change colorscheme
    colorscheme = "neobones",

    features = {
      ui_notifications = true,
    },

    options = {
      opt = {
        winblend = 0,
        pumblend = 0,
      },
    }, -- Added the missing comma here

    highlights = {
      -- This 'init' section forces transparency across all themes
      init = {
        -- 1. High Contrast Syntax Overrides
        -- This forces the colors even if the theme tries to mute them
        ["@keyword"] = { fg = "#FFFFFF", bold = true }, -- white keywords (if, return)
        ["@type"] = { fg = "#79D2E6", bold = true },    -- cyan types (double, int)
        ["@function"] = { fg = "#B1E1A6", bold = true },-- green functions (printf)
        ["@function.builtin"] = { fg = "#B1E1A6" },
        ["@string"] = { fg = "#EBCB8B" },               -- gold/yellow strings
        ["@number"] = { fg = "#FF9E64" },               -- orange numbers
        ["@comment"] = { fg = "#666666", italic = true },
        ["@variable"] = { fg = "#E0E0E0" },             -- light gray variables
        ["@operator"] = { fg = "#FFFFFF" },             -- white operators (=, +, -)

        Normal = { bg = "NONE", ctermbg = "NONE" },
        NormalNC = { bg = "NONE", ctermbg = "NONE" },
        NormalFloat = { bg = "NONE", ctermbg = "NONE" },
        FloatBorder = { bg = "NONE", ctermbg = "NONE" },
        SignColumn = { bg = "NONE", ctermbg = "NONE" },
        StatusLine = { bg = "NONE", ctermbg = "NONE" },
        -- Dashboard highlights (White for your B&W theme)
        AlphaHeader = { fg = "#FFFFFF" },
        AlphaButton = { fg = "#FFFFFF" },
        AlphaShortcut = { fg = "#FFFFFF" },
        AlphaFooter = { fg = "#FFFFFF" },
      },
    },

    icons = {
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
