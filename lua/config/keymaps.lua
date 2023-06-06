-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- https://gitee.com/hai-sea/lazynvim/blob/main/lua/config/keymaps.lua
local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~=false
  vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ---------- 插入模式 -----------
map("i", "jk", "<esc>", { desc = "ESC" })

-- 保存 退出
map({"n","i","v","s"}, "<c-s>", "<cmd>w<cr><esc>", {desc = "Save file"})
-- map("n", "<c-s>", ":w<cr>")
map("n", "Q", "<cmd>q<cr>")

-- 取消高亮
map({"i","n"}, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- tt 打开一个10行大小的终端
map('n', '<leader>wt', '<cmd>below 10sp | term<cr>a', { desc = "mini terminal"})