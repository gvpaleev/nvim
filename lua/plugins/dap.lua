return {
  {
    "mfussenegger/nvim-dap",
    opts = function(_, opts)
      local dap = require("dap")
      local mason_path = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/"
      local codelldb_path = mason_path .. "adapter/codelldb"

      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          command = codelldb_path,
          args = { "--port", "${port}" },
        },
      }

      dap.configurations.rust = {
        {
          name = "Debug Rust",
          type = "codelldb",
          request = "launch",
          program = function()
            os.execute("cargo build")
            return vim.fn.getcwd() .. "/target/debug/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
        },
      }

      -- dap.configurations.rust = {
      --   {
      --     name = "Debug Rust Test (Library)",
      --     type = "codelldb",
      --     request = "launch",
      --     program = function()
      --       -- Сборка тестов без их запуска
      --       os.execute("cargo test --no-run")
      --       -- Здесь можно попросить ввести путь к тестовому бинарнику, или задать его автоматически, если известно имя
      --       return vim.fn.input("Path to test executable: ", vim.fn.getcwd() .. "/target/debug/deps/", "file")
      --     end,
      --     cwd = "${workspaceFolder}",
      --     stopOnEntry = false,
      --     args = {},  -- можно добавить аргументы для теста, например, имя конкретного теста
      --   },
      -- }

    end,
  },
}

