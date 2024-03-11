return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

    -- telescope
    vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live grep" })
    vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope Find buffers" })
    vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Telescope Help page" })

    vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope Find oldfiles" })
    vim.keymap.set("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope Find in current buffer" })
    vim.keymap.set("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope Git commits" })
    vim.keymap.set("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status" })
    vim.keymap.set("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "Telescope Pick hidden term" })
    vim.keymap.set("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "Telescope Nvchad themes" })
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find files" })
    vim.keymap.set(
      "n",
      "<leader>fa",
      "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
      { desc = "Telescope Find all files" }
    )
  end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
