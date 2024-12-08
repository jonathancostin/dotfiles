-- Bootstrap lazy.nvim, LazyVim, and your plugins
require("config.lazy")
require("obsidian").setup({
  workspaces = {
    {
      name = "main",
      path = "~/Main",
    },
  },
  disable_frontmatter = true,
})
