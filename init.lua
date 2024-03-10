vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu")

vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000 
  },
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.5',
    dependencies = { 
      'nvim-lua/plenary.nvim' 
    }
  },
  {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate"
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }
}

local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- nvimtree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree focus<CR>", { desc = "Nvimtree Focus window" })
vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle filesystem reveal left<CR>"  , {})


vim.keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Move Beginning of line" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "Move End of line" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move Left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move Right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move Down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move Up" })


vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })

vim.keymap.set("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle Line number" })
vim.keymap.set("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })

local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {
    "lua", 
    "javascript",
    "typescript", 
    "scala",
    "rust",
    "fish",
    "bash",
  },
  highlight = { enable = true },
  indent = { enable = true },
})

require("catppuccin").setup({

})
vim.cmd.colorscheme "catppuccin" 
