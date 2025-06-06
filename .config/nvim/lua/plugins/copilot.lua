return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({

      suggestion = {
        enabled = not vim.g.ai_cmp,
        auto_trigger = true,
        hide_during_completion = vim.g.ai_cmp,
        debounce = 75, -- 延迟时间(毫秒)
        keymap = {
          accept = false, -- 接受建议的快捷键
          accept_word = false, -- 接受单词建议
          accept_line = false, -- 接受整行建议
          next = "<M-]>", -- 下一个建议
          prev = "<M-[>", -- 上一个建议
          dismiss = "<C-]>", -- 取消建议
        },
      },

      -- 文件类型配置
      filetypes = {
        yaml = true, -- 启用特定文件类型
        markdown = true,
        help = false,
        gitcommit = true,
        gitrebase = true,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
        -- 添加您需要支持的其他文件类型
        python = true,
        javascript = true,
        typescript = true,
        lua = true,
      },

      -- Node 命令配置
      copilot_node_command = "node", -- 或指定特定路径

      -- 服务器选项覆盖
      server_opts_overrides = {
        settings = {
          advanced = {
            listCount = 10, -- 面板中的建议数量
            inlineSuggestCount = 5, -- 内联建议数量
          },
        },
      },
    })
  end,
}
