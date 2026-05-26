-- nav
vim.cmd.colorscheme('slate')
vim.o.cursorline = true
-- nav.bar
vim.o.showcmd = true
vim.o.laststatus = 2
vim.o.wildmenu = true
-- nav.sidebar
vim.o.number = true
vim.o.relativenumber = false
vim.o.signcolumn = 'auto'

-- style
vim.o.syntax = on
vim.o.termguicolors = true
-- style.lines
vim.o.wrap = true
vim.o.linebreak = true
-- style.tab & space
vim.o.expandtab = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
-- style.indent
vim.o.autoindent = true
vim.o.smartindent = true

-- search
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = false
vim.o.smartcase = false

-- file
vim.o.encoding = 'utf-8'
vim.o.swapfile = true
vim.o.autowrite = false

-- split
vim.o.splitright = true
vim.o.splitbelow = true

-- mouse
vim.o.mouse = ''
