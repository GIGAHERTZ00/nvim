local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- New tab
keymap("n", "te", ":tabedit", opts)
-- 新しいタブを一番右に作る
keymap("n", "gn", ":tabnew<Return>", opts)
-- move tab
keymap("n", "gh", "gT", opts)
keymap("n", "gl", "gt", opts)

-- Split window
keymap("n", "ss", ":split<Return><C-w>w", opts)
keymap("n", "sv", ":vsplit<Return><C-w>w", opts)
keymap('', 'sh', '<C-w>h', opts)
keymap('', 'sk', '<C-w>k', opts)
keymap('', 'sj', '<C-w>j', opts)
keymap('', 'sl', '<C-w>l', opts)
keymap("n", "sts", ":split<Return><C-w>w<C-w>j:terminal<Return>i", opts)
keymap("n", "stv", ":vsplit<Return><C-w>w<C-w>l:terminal<Return>i", opts)

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- Do not yank with x
keymap("n", "x", '"_x', opts)

-- Delete a word backwards
keymap("n", "dw", 'vb"_d', opts)

-- 行の端に行く
keymap("n", "<Space>h", "^", opts)
keymap("n", "<Space>l", "$", opts)

-- 行末までのヤンクにする
keymap("n", "Y", "y$", opts)

-- <Space>q で強制終了
keymap("n", "<Space>q", ":<C-u>q!<Return>", opts)

-- ESC*2 でハイライトやめる
keymap("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- ビジュアルモード時vで行末まで選択
keymap("v", "v", "$h", opts)


-- terminal --
keymap('t', "<ESC>", [[<C-\><C-n>]], opts)


-- LSP --
-- カーソル下の変数の情報を表示
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- カーソル下の変数の定義元へジャンプ
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- インデントを揃える
keymap("n", "gf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
-- カーソル下の変数をコード内で参照している箇所を一覧表示
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
-- カーソル下の変数の型を表示
keymap("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
-- 変数名の変更
keymap("n", "gn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)

-- other
-- ファイルを開く
keymap("n", "<Space>we", ":w<Return>:e<Space>.<Return>", opts)
keymap("n", "<Space>wt", ":w<Return><C-w>ji", opts)
keymap("n", "<Space>wtt", ":w<Return>:split<Return><C-w>w<C-w>j:terminal<Return>i", opts)
keymap("n", "<Space>e", ":e<Space>.<Return>", opts)
keymap("n", "<Space>w", ":w<Return>", opts)
keymap("n", "<Space>wf", ":w<Return>:Telescope find_files<Return>", opts)
keymap("n", "<Space>f", ":Telescope find_files<Return>", opts)

-- Press <space>wq to save and quit
keymap("n", "<Space>wq", ":wq<Return>", opts)
-- Press <space>t to open a terminal
keymap("n", "<Space>t", ":terminal<Return>i", opts)
