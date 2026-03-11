-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- center view after ctrl+u or ctrl+d
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Diagnostic Config & Keymaps
-- See :help vim.diagnostic.Opts
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- grapple
vim.keymap.set('n', '<leader>m', '<cmd>Grapple toggle<cr>', { desc = 'Grapple toggle tag' })
vim.keymap.set('n', '<leader>M', '<cmd>Grapple toggle_tags<cr>', { desc = 'Grapple open tags window' })
vim.keymap.set('n', '<leader>n', '<cmd>Grapple cycle_tags next<cr>', { desc = 'Grapple cycle next tag' })
vim.keymap.set('n', '<leader>p', '<cmd>Grapple cycle_tags prev<cr>', { desc = 'Grapple cycle previous tag' })
vim.keymap.set('n', '<leader>1', '<cmd>Grapple select index=1<cr>', { desc = 'Grapple select index 1' })
vim.keymap.set('n', '<leader>2', '<cmd>Grapple select index=2<cr>', { desc = 'Grapple select index 2' })
vim.keymap.set('n', '<leader>3', '<cmd>Grapple select index=3<cr>', { desc = 'Grapple select index 3' })

-- open Oil.nvim
vim.keymap.set('n', '<C-p>', '<cmd>Oil<cr>', { desc = 'Open Oil in current directory' })

-- open lazygit
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<cr>', { desc = 'Open LazyGit' })

-- toggle zenmode
vim.keymap.set('n', '<leader>zm', '<cmd>ZenMode<cr><bar><cmd>set linebreak<cr>', { desc = 'Toggle ZenMode' })
