return {
  'frankroeder/parrot.nvim',

  dependencies = {
    'ibhagwan/fzf-lua',
    'nvim-lua/plenary.nvim',
    'rcarriga/nvim-notify',
  },

  config = function(_, opts)
    require('parrot').setup(opts)
  end,

  opts = {
    providers = {
      anthropic = {
        api_key = os.getenv 'ANTHROPIC_API_KEY',
      },
    },
  },
  keys = {
    { '<C-g>c', '<cmd>PrtChatNew<cr>', mode = { 'n', 'i' }, desc = 'New Chat' },
    { '<C-g><CR>', '<cmd>PrtChatResponde<cr>', mode = { 'n', 'i' }, desc = 'New Chat' },
    { '<C-g>c', ":<C-u>'<,'>PrtChatNew<cr>", mode = { 'v' }, desc = 'Visual Chat New' },
    { '<C-g>t', '<cmd>PrtChatToggle<cr>', mode = { 'n', 'i' }, desc = 'Toggle Popup Chat' },
    { '<C-g>f', '<cmd>PrtChatFinder<cr>', mode = { 'n', 'i' }, desc = 'Chat Finder' },
    { '<C-g>r', '<cmd>PrtRewrite<cr>', mode = { 'n', 'i' }, desc = 'Inline Rewrite' },
    { '<C-g>r', ":<C-u>'<,'>PrtRewrite<cr>", mode = { 'v' }, desc = 'Visual Rewrite' },
    { '<C-g><C-d>', '<cmd>PrtStop<cr>', mode = { 'n', 'i', 'v', 'x' }, desc = 'Stop' },
    { '<C-g>q', '<cmd>PrtAsk<cr>', mode = { 'n' }, desc = 'Ask a question' },
  },
}
