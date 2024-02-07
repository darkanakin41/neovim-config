return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function() 
    local treesitterConfig = require("nvim-treesitter.configs")
    treesitterConfig.setup({
      ensure_installed = { "lua", "php", "javascript", "sql", "typescript", "html", "twig" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

