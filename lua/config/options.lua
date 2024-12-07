-- Set custom winbar
vim.opt.winbar = "%=%m %f"

-- Override formatoptions globally
vim.opt.formatoptions = "tcq"

-- Set up format-on-save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({ async = true })
  end,
})

-- Filetype-specific adjustments (optional)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt.formatoptions:remove("o") -- Disable auto-commenting for Lua
  end,
})
