local keymap = vim.keymap

local options = { silent = true, noremap = true }

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- keymap.set('n', '<left>', '<cmd>echo "Use h to move"<CR>')
-- keymap.set('n', '<right>', '<cmd>echo "Use l to move"<CR>')
-- keymap.set('n', '<up>', '<cmd>echo "Use k to move"<CR>')
-- keymap.set('n', '<down>', '<cmd>echo "Use j to move"<CR>')

keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('n', '<M-Space>', '<cmd>Explore<CR>', { desc = 'Open file explorer' })

keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

keymap.set('n', 'J', 'mzJ`z')
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

keymap.set({ 'n', 'v' }, '<leader>d', '"_d', { desc = '[D]elete text without yanking' })

keymap.set('n', 'Q', '<nop>')
keymap.set('n', '<C-f>', '<cmd>!tmux neww tmux-sessionizer<CR>', opts)
keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat code' })

-- keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set('n', '<leader>m', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', opts)

keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')
keymap.set('n', '<C-a>', 'gg<S-v>G')

keymap.set('n', 'te', ':tabedit', opts)
keymap.set('n', '<tab>', ':tabnext<Return>', opts)
keymap.set('n', '<s-tab>', ':tabprev<Return>', opts)
keymap.set('n', 'ss', ':split<Return>', opts)
keymap.set('n', 'sv', ':vsplit<Return>', opts)
