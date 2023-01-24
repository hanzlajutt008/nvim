local o = vim.opt

local has = function (x)
  return vim.fn.has(x) == 1
end

local is_windows = has('win32')

o.autoindent = true
o.autoread = true
o.cmdheight = 2
o.cursorcolumn = true
o.cursorline = true
o.expandtab = true
o.fileencoding = 'utf-8'
o.guicursor = ''
o.hlsearch = false
o.ignorecase = true
o.incsearch = true
o.mouse = 'a'
o.number = true
o.relativenumber = true
o.scrolloff = 10
o.signcolumn = "yes"
o.smartcase = true
o.smartindent = true
o.smarttab = true
o.swapfile = false
o.backup = false
if is_windows then
  o.undodir = os.getenv('UserProfile') .. '/.vim/undodir'
else
  o.undodir = os.getenv('HOME') .. '/.vim/undodir'
end
o.undofile = true
o.tabstop = 2
o.shiftwidth = 2
o.updatetime = 300
o.wrap = false
o.termguicolors = true
o.path:append { '**' }
o.wildignore:append { '*/node_modules/*', '*/vendor/*' }
o.clipboard:append { 'unnamed', 'unnamedplus' }
