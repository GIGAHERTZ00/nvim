local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Remove whitespace on save
autocmd("BufWritePre", {
	pattern = "*",
	command = ":%s/\\s\\+$//e",
})

-- Don't auto commenting new lines
autocmd("BufEnter", {
	pattern = "*",
	command = "set fo-=c fo-=r fo-=o",
})

-- Restore cursor location when file is opened
autocmd({ "BufReadPost" }, {
	pattern = { "*" },
	callback = function()
		vim.api.nvim_exec('silent! normal! g`"zv', false)
	end,
})

-- WSL環境でのクリップボードの有効化
if vim.fn.has("wsl") then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "/mnt/c/Users/gn_00/softwares/win32yank-x64/win32yank.exe -i --crlf",
      ["*"] = "/mnt/c/Users/gn_00/softwares/win32yank-x64/win32yank.exe -i --crlf"
    },
    paste = {
      ["+"] = "/mnt/c/Users/gn_00/softwares/win32yank-x64/win32yank.exe -o --crlf",
      ["*"] = "/mnt/c/Users/gn_00/softwares/win32yank-x64/win32yank.exe -o --crlf"
    },
    cache_enable = 0,
  }
end
