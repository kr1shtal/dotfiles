local opt = vim.opt

vim.g.mapleader = " "

opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

-- Indentation 
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.wrap = false
opt.linebreak = true

-- Search
opt.hlsearch = true
opt.incsearch = true
opt.smartcase = true
opt.ignorecase = true
opt.inccommand = "split"

opt.cursorline = true
opt.termguicolors = true

-- no backup
opt.swapfile = false
opt.backup = false

opt.scrolloff = 10
opt.colorcolumn = "80"
opt.signcolumn = "yes"

-- o.mouse = "a"
opt.more = false
opt.title = true
opt.titlestring = '%t%( %M%)%( (%{expand("%:~:h")})%)%a (nvim)'
opt.encoding = "utf-8"
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamed,unnamedplus") -- , if lin + osx *
