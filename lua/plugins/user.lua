return {
  
   {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        -- " █████  ███████ ████████ ██████   ██████",
        -- "██   ██ ██         ██    ██   ██ ██    ██",
        -- "███████ ███████    ██    ██████  ██    ██",
        -- "██   ██      ██    ██    ██   ██ ██    ██",
        -- "██   ██ ███████    ██    ██   ██  ██████",
        -- " ",
        -- "    ███    ██ ██    ██ ██ ███    ███",
        -- "    ████   ██ ██    ██ ██ ████  ████",
        -- "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        -- "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        -- "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },
  
  {
  "abidibo/nvim-httpyac",
  config = function ()
    require('nvim-httpyac').setup()
    -- if you want to set up the keymaps
    vim.keymap.set('n', '<Leader>rr', '<cmd>:NvimHttpYac<CR>', { desc='Run request'})
    vim.keymap.set('n', '<Leader>ra', '<cmd>:NvimHttpYacAll<CR>', { desc='Run all requests'})
   end
  },
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
          },
        },
      })
      vim.cmd("colorscheme carbonfox")
    end,
  }
}
  -- {
  -- "harrisoncramer/gitlab.nvim",
  -- dependencies = {
  --   "MunifTanjim/nui.nvim",
  --   "nvim-lua/plenary.nvim",
  --   "sindrets/diffview.nvim",
  --   "stevearc/dressing.nvim", -- Recommended but not required. Better UI for pickers.
  --   "nvim-tree/nvim-web-devicons", -- Recommended but not required. Icons in discussion tree.
  -- },
  -- build = function () require("gitlab.server").build(true) end, -- Builds the Go binary
  -- config = function()
  --   require("gitlab").setup()
  --   local gitlab = require("gitlab")
  -- end,
  -- },
  
  -- {
  -- "yetone/avante.nvim",
  -- event = "VeryLazy",
  -- lazy = false,
  -- version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
  -- opts = {
  --   -- add any opts here
  --   -- for example
  -- -- provider = "claude", 
  -- provider = "openai",
  --
  -- claude = {
  --   endpoint = "https://api.anthropic.com",
  --   model = "claude-3-5-sonnet-20241022",
  --   temperature = 0,
  --   max_tokens = 4096,
  -- },
  -- openai = {
  --    endpoint = "https://api.openai.com/v1",
  --    model = "gpt-3.5", -- your desired model (or use gpt-4o, etc.)
  --    timeout = 30000, -- timeout in milliseconds
  --    temperature = 0, -- adjust if needed
  --    max_tokens = 4096,
  --   },
  -- },
  -- -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  -- build = "make",
  -- -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  -- dependencies = {
  --   "stevearc/dressing.nvim",
  --   "nvim-lua/plenary.nvim",
  --   "MunifTanjim/nui.nvim",
  --   --- The below dependencies are optional,
  --   "echasnovski/mini.pick", -- for file_selector provider mini.pick
  --   "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
  --   "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
  --   "ibhagwan/fzf-lua", -- for file_selector provider fzf
  --   "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
  --   "zbirenbaum/copilot.lua", -- for providers='copilot'
  --   {
  --     -- support for image pasting
  --     "HakonHarnes/img-clip.nvim",
  --     event = "VeryLazy",
  --     opts = {
  --       -- recommended settings
  --       default = {
  --         embed_image_as_base64 = false,
  --         prompt_for_file_name = false,
  --         drag_and_drop = {
  --           insert_mode = true,
  --         },
  --         -- required for Windows users
  --         use_absolute_path = true,
  --       },
  --     },
  --   },
--     {
--       -- Make sure to set this up properly if you have lazy=true
--       'MeanderingProgrammer/render-markdown.nvim',
--       opts = {
--         file_types = { "markdown", "Avante" },
--       },
--       ft = { "markdown", "Avante" },
--     },
--   },
-- }


