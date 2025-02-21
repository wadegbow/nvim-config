-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'marko-cerovac/material.nvim',
  priority = 999, -- make sure to load this before all the other start plugins
  init = function()
    local material = require 'material'
    -- local colors = require 'material.colors'
    material.setup {
      custom_colors = function(colors)
        colors.editor.bg = '#232423'
        colors.editor.bg_alt = '#1e1e1e'
      end,
    }
    vim.g.material_style = 'darker'
    vim.cmd.colorscheme 'material'
  end,
}
