vim.cmd [[packadd packer.nvim]]

vim.cmd[[colorscheme two-firewatch]]
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
vim.cmd('hi NonText guibg=NONE ctermbg=NONE')
vim.cmd([[set relativenumber]])
vim.cmd[[set tabstop=4]]
vim.cmd[[set shiftwidth=4]]
return require('packer').startup(function(use)
        -- install without yarn or npm
        use({
                "iamcco/markdown-preview.nvim",
                run = function() vim.fn["mkdp#util#install"]() end,
        })

        use 'wbthomason/packer.nvim'
        use 'jiangmiao/auto-pairs'

  use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'raimondi/delimitmate'
  use 'flazz/vim-colorschemes'
  use 'valloric/youcompleteme'


use({
  "epwalsh/obsidian.nvim",
  tag = "*",  -- recommended, use latest release instead of latest commit
  requires = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/personal",
        },
        {
          name = "work",
          path = "~/vaults/work",
        },
      },

      -- see below for full list of options 👇
    })
  end,
})

end)
