-- local opt = { noremap = true, silent = true }
-- local opt = { noremap = true }

-- env
if vim.loop.os_uname().sysname == "Darwin" then
	vim.env.PATH = "/opt/homebrew/bin/:" .. vim.env.PATH
end

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- funtion
vim.keymap.set('n', '<Leader>cs', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<Leader>cn', function()
	vim.opt.number = not vim.opt.number:get()
end)

-- terminal
vim.keymap.set('n', '<Leader>tt', '<cmd>terminal<CR>i')
vim.keymap.set('n', '<Leader>tg', '<cmd>terminal<CR>igo tun .<CR>')

-- save & close
vim.keymap.set('n', '<Leader>s', '<cmd>w<CR>')
vim.keymap.set('n', '<Leader>q', '<cmd>q<CR>')
-- vim.keymap.set('n', '<Leader>w', '<cmd>wq<CR>')

-- operate words fast
vim.keymap.set('n', 'yw', 'yiw')
vim.keymap.set('n', 'cw', 'ciw')
vim.keymap.set('n', 'dw', 'diw')

-- tabpage.manage
vim.keymap.set('n', '<Leader><Tab>n', '<cmd>tabnew<CR>')
vim.keymap.set('n', '<Leader><Tab>q', '<cmd>tabclose<CR>')
-- tabpage.nav
vim.keymap.set('n', '<Leader><Tab><Tab>', '<cmd>tabnext<CR>')
vim.keymap.set('n', '<Leader><Tab>l', '<cmd>tabnext<CR>')
vim.keymap.set('n', '<Leader><Tab>h', '<cmd>tabprevious<CR>')
-- tabpage.move
vim.keymap.set('n', '<Leader><Tab><', '<cmd>tabmove -<CR>')
vim.keymap.set('n', '<Leader><Tab>>', '<cmd>tabmove +<CR>')
for i = 1, 9 do
  vim.keymap.set('n', '<Leader>' .. i, '<cmd>tabnext ' .. i .. '<CR>')
end

-- window.manage
vim.keymap.set('n', '<Leader>wn', '<C-w>n')
vim.keymap.set('n', '<Leader>wv', '<C-w>v')
vim.keymap.set('n', '<Leader>ws', '<C-w>s')
vim.keymap.set('n', '<Leader>wq', '<C-w>q')
-- window.nav
vim.keymap.set('n', '<Leader>ww', '<C-w>w')
vim.keymap.set('n', '<Leader>wh', '<C-w>h')
vim.keymap.set('n', '<Leader>wj', '<C-w>j')
vim.keymap.set('n', '<Leader>wk', '<C-w>k')
vim.keymap.set('n', '<Leader>wl', '<C-w>l')
-- window.move
vim.keymap.set('n', '<Leader>wx', '<C-w>x')
vim.keymap.set('n', '<Leader>wr', '<C-w>r')
-- window.resize
vim.keymap.set("n", "<D-h>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<D-l>", "<cmd>vertical resize +2<CR>")
vim.keymap.set("n", "<D-j>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<D-k>", "<cmd>resize +2<CR>")
