local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true
opt.wrap = false

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 22 
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"
opt.cursorline = true

opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
