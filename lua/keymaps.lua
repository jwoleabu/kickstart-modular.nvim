-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- Terminals
vim.keymap.set('t', '<esc><esc>', "<C-\\><C-n>", { desc = "Terminal Normal Mode" })
vim.keymap.set("n", "<leader>t", function()
    require("toggleterm").toggle(1, 10, vim.fn.getcwd(), "horizontal")
end, { desc = "Toggle Terminal" })
-- vim.keymap.set("n", "<leader>tv", function()
--     require("toggleterm").toggle(2, 80, vim.fn.getcwd(), "vertical")
-- end, { desc = "Toggle vertical terminal" })


-- Buffer Navigation
vim.keymap.set('n', '<leader>bD', vim.cmd.bd, { desc = "Delete Buffer and Window" })
vim.keymap.set('n', '<leader>bn', vim.cmd.bd, { desc = "Next Buffer" })

-- Windows
vim.keymap.set('n', '<leader>wd', '<C-W>c', { desc = "Delete Window" })
vim.keymap.set('n', '<leader>wv', vim.cmd.vsplit, { desc = "Vertically Split Window" })
vim.keymap.set('n', '<leader>ws', vim.cmd.split, { desc = "Horizontally Split Window" })
vim.keymap.set('n', '<leader>wo', vim.cmd.on, { desc = "Close Other Windows" })
vim.keymap.set('n', '<leader>wK', '<C-w>K', { desc = "Move Window Far Top" })
vim.keymap.set('n', '<leader>wJ', '<C-w>J', { desc = "Move Window Far Bottom" })
vim.keymap.set('n', '<leader>wH', '<C-w>H', { desc = "Move Window Far Left" })
vim.keymap.set('n', '<leader>wL', '<C-w>L', { desc = "Move Window Far Right" })

-- Packages
vim.keymap.set('n', '<leader>pl', vim.cmd.Lazy, { desc = "Lazy" })
vim.keymap.set('n', '<leader>pm', vim.cmd.Mason, { desc = "Mason" })

-- vim: ts=2 sts=2 sw=2 et
