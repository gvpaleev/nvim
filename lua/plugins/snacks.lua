return {
  "snacks.nvim",
  opts = function(_, opts)
    -- убираем логотип
    opts.dashboard.preset.header = {}

    return opts
  end,
}
