local harpoon = require 'harpoon'
local keymap = vim.keymap

harpoon:setup()

keymap.set('n', '<M-a>', function()
  harpoon:list():add()
end)
keymap.set('n', '<M-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

keymap.set('n', '<M-1>', function()
  harpoon:list():select(1)
end)
keymap.set('n', '<M-2>', function()
  harpoon:list():select(2)
end)
keymap.set('n', '<M-3>', function()
  harpoon:list():select(3)
end)
keymap.set('n', '<M-4>', function()
  harpoon:list():select(4)
end)

keymap.set('n', '<C-S-P>', function()
  harpoon:list():prev()
end)
keymap.set('n', '<C-S-N>', function()
  harpoon:list():next()
end)
