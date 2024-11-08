return {
  'nvim-pack/nvim-spectre',
  init = function()
    local map = function(keys, cmd, desc)
      vim.keymap.set('n', keys, cmd, { noremap = true, silent = true, desc = 'LSP: ' .. desc })
    end

    map('<leader>S', '<cmd>lua require("spectre").toggle()<CR>', 'Reveal Spectre panel')
    map('<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', 'Search current word')
  end,
}
