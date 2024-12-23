local options = vim.opt

options.termguicolors = true
options.guicursor = ''
options.number = true
options.relativenumber = true
options.mouse = 'a'
options.showmode = false

-- vim.schedule(function()
-- options.clipboard = 'unnamedplus'
-- end)

options.breakindent = true
options.undofile = true
options.ignorecase = true
options.smartcase = true
options.signcolumn = 'yes'
options.updatetime = 250
options.timeoutlen = 300
options.splitright = true
options.splitbelow = true
options.list = true
options.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
options.inccommand = 'split'
options.cursorline = true
options.scrolloff = 10
