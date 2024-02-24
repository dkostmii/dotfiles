vim.keymap.set("n", "<M-,>", "<cmd>vertical resize -5<cr>", {
  desc = "Shrink the current window in width",
})

vim.keymap.set("n", "<M-.>", "<cmd>vertical resize +5<cr>", {
  desc = "Grow the current window in width",
})

vim.keymap.set("n", "<M-->", "<cmd>resize -3<cr>", {
  desc = "Shrink the current window in height",
})

vim.keymap.set("n", "<M-=>", "<cmd>resize +3<cr>", {
  desc = "Grow the current window in height",
})

vim.keymap.set("n", "<M-q>", "<cmd>qa<cr>", {
  desc = "Close NeoVim, if all work is saved",
})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {
  desc = "Scroll down and center cursor at the half of screen",
})

vim.keymap.set("n", "<C-u>", "<C-u>zz", {
  desc = "Scroll up and center cursor at the half of screen",
})

if vim.g.vscode then
  vim.keymap.set("n", "<leader>q", function()
    require("vscode-neovim").call("workbench.action.closeUnmodifiedEditors")
  end, { desc = "Closes all saved tabs in the current pane (which closes the pane)", noremap = true })
end
