-- Конфигурация плагина avante.nvim - AI-ассистент для Neovim
return {
  "yetone/avante.nvim", -- Репозиторий плагина на GitHub
  event = "VeryLazy", -- Загружается при событии VeryLazy для отложенной загрузки
  version = false, -- Использовать последнюю версию из main ветки (не "*" во избежание проблем)
  opts = {
    -- Настройки плагина
    provider = "claude", -- Используем Claude в качестве AI-провайдера
    -- Пример настройки для OpenAI (закомментировано)
    -- openai = {
    --   endpoint = "https://api.openai.com/v1", -- API эндпоинт
    --   model = "gpt-4o", -- Модель для использования
    --   timeout = 30000, -- Таймаут в миллисекундах
    --   temperature = 0, -- Температура генерации (0 = более детерминированные ответы)
    --   max_completion_tokens = 8192, -- Максимальное количество токенов для ответа
    --   --reasoning_effort = "medium", -- Уровень рассуждения (низкий/средний/высокий)
    -- },
  },
  -- Команда сборки плагина
  build = "make", -- Для Linux/macOS
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- Для Windows
  dependencies = {
    -- Обязательные зависимости
    "nvim-treesitter/nvim-treesitter", -- Для синтаксического анализа
    "stevearc/dressing.nvim", -- Улучшенные UI компоненты
    "nvim-lua/plenary.nvim", -- Библиотека утилит для Neovim
    "MunifTanjim/nui.nvim", -- UI компоненты для Neovim

    --- Опциональные зависимости
    "echasnovski/mini.pick", -- Для выбора файлов через mini.pick
    "nvim-telescope/telescope.nvim", -- Для выбора файлов через telescope
    "hrsh7th/nvim-cmp", -- Автодополнение для команд avante и упоминаний
    "ibhagwan/fzf-lua", -- Для выбора файлов через fzf
    "nvim-tree/nvim-web-devicons", -- Иконки для файлов (или можно использовать mini.icons)
    "zbirenbaum/copilot.lua", -- Для интеграции с GitHub Copilot
    {
      -- Поддержка вставки изображений
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy", -- Отложенная загрузка
      opts = {
        -- Рекомендуемые настройки
        default = {
          embed_image_as_base64 = false, -- Не встраивать изображения как base64
          prompt_for_file_name = false, -- Не запрашивать имя файла
          drag_and_drop = {
            insert_mode = true, -- Разрешить перетаскивание в режиме вставки
          },
          -- Необходимо для пользователей Windows
          use_absolute_path = true, -- Использовать абсолютные пути
        },
      },
    },
    {
      -- Рендеринг Markdown в Neovim
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" }, -- Типы файлов для рендеринга
      },
      ft = { "markdown", "Avante" }, -- Загружать только для этих типов файлов
    },
  },
}
