return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = true

      local map = vim.api.nvim_set_keymap
      local opts = function(desc)
        return { noremap = true, silent = true, desc }
      end

      -- Move to previous/next
      map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Shift focus left to previous buffer' })
      map('n', '<C-.>', '<Cmd>BufferNext<CR>', { desc = 'Shift focus right to next buffer' })
      -- Re-order to previous/next
      map('n', '<C-<>', '<Cmd>BufferMovePrevious<CR>', { desc = 'Relocate the tab one position to the left' })
      map('n', '<C->>', '<Cmd>BufferMoveNext<CR>', { desc = 'Relocate the tab one position to the right' })
      map('n', '<C-c>', '<Cmd>BufferClose<CR>', { desc = 'Close the current tab' })
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
