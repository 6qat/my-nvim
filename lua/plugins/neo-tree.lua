return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", "<cmd>Neotree focus<CR>", { desc = "Nvimtree Focus window" })
		vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle filesystem reveal left<CR>", {})
	end,
}
