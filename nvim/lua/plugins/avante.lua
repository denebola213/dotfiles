return {
  -----------------------------------------------------------------------------
  -- 1. Avante.nvim (OpenRouter & UIモデル切り替え対応)
  -----------------------------------------------------------------------------
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- 最新ビルドを取得
    opts = {
      -- デフォルトで使うプロバイダーを指定
      provider = "deepseek_v4_flash_0731",
      auto_suggestions_provider = "deepseek_v4_flash_0731",

      -- OpenRouter 経由の各モデルを「vendors」として定義
      -- ここに登録したモデルが `:AvanteSwitchProvider` の切替リストに並びます
      providers = {
        deepseek_v4_flash_0731 = {
          __inherited_from = "openai",
          endpoint = "https://openrouter.ai/api/v1",
          model = "deepseek/deepseek-v4-flash-0731",
          api_key_name = "OPENAI_API_KEY",
        },
        glm_53_flash = {
          __inherited_from = "openai",
          endpoint = "https://openrouter.ai/api/v1",
          model = "z-ai/glm-5.3-flash",
          api_key_name = "OPENAI_API_KEY",
        },
        gpt_56_luna = {
          __inherited_from = "openai",
          endpoint = "https://openrouter.ai/api/v1",
          model = "openai/gpt-5.6-luna",
          api_key_name = "OPENAI_API_KEY",
        },
      },
    },
    -- 依存関係（Avanteに必要なプラグインの推奨構成）
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "hrsh7th/nvim-cmp", -- オートコンプリート
      "nvim-tree/nvim-web-devicons",
      {
        -- 画像のペーストサポート (オプション)
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = { insert_mode = true },
          },
        },
      },
    },
  },

  -----------------------------------------------------------------------------
  -- 2. fzf-lua (lazyvim.plugins.extras.editor.fzf) の調整 (任意)
  -----------------------------------------------------------------------------
  {
    "ibhagwan/fzf-lua",
    opts = {
      winopts = {
        height = 0.85,
        width = 0.80,
      },
    },
  },
}
