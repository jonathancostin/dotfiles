vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = false
  end,
})

-- Disable autocompletion in markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- Disable nvim-cmp autocompletion for markdown
    require("cmp").setup.buffer({
      enabled = false,
    })
  end,
})
