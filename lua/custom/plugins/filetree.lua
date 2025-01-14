return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  -- opts = {
  --   filesystem = {
  --     filtered_items = {
  --       visible = true,
  --       show_hidden_count = true,
  --       hide_dotfiles = false,
  --       hide_gitignored = true,
  --       hide_by_name = {
  --         '.git',
  --         '.DS_Store',
  --         'thumbs.db',
  --       },
  --       never_show = {},
  --     },
  --   },
  -- },
  window = {
    position = 'float',
  },

  init = function()
    local map = function(keys, cmd, desc)
      vim.keymap.set('n', keys, cmd, { noremap = true, silent = true, desc = 'LSP: ' .. desc })
    end

    map('t', '<Cmd>Neotree reveal float<CR>', 'Reveal the current file in Neo[t]ree')
  end,
}
