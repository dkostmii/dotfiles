vim.cmd.syntax("on")
vim.cmd([[filetype plugin on]])
vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.list = true
vim.opt.listchars = "tab:<->,lead:~,trail:-,nbsp:_,multispace:."

vim.g.c_space_errors = 1
vim.g.c_no_trail_space_error = 1
vim.g.c_no_tab_space_error = 1
vim.g.java_space_errors = 1

vim.api.nvim_create_autocmd({ "ColorScheme", "BufWinLeave" }, {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "ExtraWhitespace", {
      bold = true,
      underline = true,
      fg = "#FFFFFF",
      bg = "#FF0000",
    })
  end,
})

vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
  pattern = "*",
  command = [[match ExtraWhitespace /\s\+$/]],
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
  pattern = "alpha",
  command = [[hi clear ExtraWhitespace]],
})
