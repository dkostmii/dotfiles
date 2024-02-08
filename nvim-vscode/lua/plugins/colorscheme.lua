return {
  "Matsuuu/pinkmare",
  lazy = false,
  cond = function()
    return not vim.g.vscode
  end,
  priority = 1000,
  config = function()
    vim.opt.background = "dark"
    vim.opt.termguicolors = true
    vim.cmd.colorscheme("pinkmare")
  end,
}
