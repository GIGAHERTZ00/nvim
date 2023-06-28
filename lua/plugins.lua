return {
  { --colorscheme
    'Shatur/neovim-ayu',
    config = function()
      require("ayu").setup({
        mirage = false,
      })
      vim.cmd([[colorscheme ayu]])
    end
  },
  { --mason
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup({
        ui = {
          check_outdated_packages_on_open = true,
          border = "none",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          },
          keymaps = {
            toggle_package_expand = "<CR>",
            install_package = "i",
            update_package = "u",
            check_package_version = "c",
            update_all_packages = "U",
            check_outdated_packages = "C",
            uninstall_package = "X",
            cancel_installation = "<C-c>",
            apply_language_filter = "<C-f>",
          },
        },
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      })
    end
  },
  {
    "nvim-lua/plenary.nvim"
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup({
        defaults = {
          sorting_strategy = "ascending",
          layout_strategy = "vertical",
          layout_config = { height = 0.9 },
          file_ignore_patterns= {
            "^.git/",
            "^node_modules/",
          },
        },
      })
    end
  },
  {
    "stevearc/dressing.nvim",
  },
  {
    "MunifTanjim/nui.nvim",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
        },
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      })
    end
  },
  {
    "rcarriga/nvim-notify",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
          DEFAULT_OPTIONS = {
            RGB      = true;         -- #RGB hex codes
            RRGGBB   = true;         -- #RRGGBB hex codes
            names    = true;         -- "Name" codes like Blue
            RRGGBBAA = true;        -- #RRGGBBAA hex codes
            rgb_fn   = true;        -- CSS rgb() and rgba() functions
            hsl_fn   = true;        -- CSS hsl() and hsla() functions
            css      = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
            -- Available modes: foreground, background
            mode     = 'background'; -- Set the display mode.
          },
      })
    end
  },
  {
    "cohama/lexima.vim",
  },
  {
    "uga-rosa/ccc.nvim",
  },
}
