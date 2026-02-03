return {
  "greggh/claude-code.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("claude-code").setup({
      window = {
        position = "float",
        split_ratio = 0.3,
        enter_insert = true,
        hide_numbers = true,
        hide_signcolumn = true,
        float = {
          width = "30%",
          height = "60%",
          row = "80%",
          col = "80%",
        },
      },
      refresh = {
        enable = true,
        updatetime = 100,
        timer_interval = 1000,
        show_notifications = true,
      },
      command = "claude",
      -- Command variants
      command_variants = {
        -- Conversation management
        continue = "--continue", -- Resume the most recent conversation
        resume = "--resume", -- Display an interactive conversation picker

        -- Output options
        verbose = "--verbose", -- Enable verbose logging with full turn-by-turn output
      },
      -- Keymaps
      keymaps = {
        toggle = {
          normal = "<C-,>", -- Normal mode keymap for toggling Claude Code, false to disable
          terminal = "<C-,>", -- Terminal mode keymap for toggling Claude Code, false to disable
          variants = {
            continue = "<leader>cC", -- Normal mode keymap for Claude Code with continue flag
            resume = "<leader>cR", -- Normal mode keymap for Claude Code with resume flag
            verbose = "<leader>cV", -- Normal mode keymap for Claude Code with verbose flag
          },
        },
        window_navigation = true, -- Enable window navigation keymaps (<C-h/j/k/l>)
        scrolling = true, -- Enable scrolling keymaps (<C-f/b>) for page up/down
      },
    })
  end,
}
