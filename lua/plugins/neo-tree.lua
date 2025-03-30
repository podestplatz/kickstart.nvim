return {
	"nvim-neo-tree/neo-tree.nvim",
	branch='v3.x',
	dependencies={
	    "nvim-lua/plenary.nvim",
	    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	    "MunifTanjim/nui.nvim",
	},
	lazy = false, -- neo-tree will lazily load itself
	---@module "neo-tree"
	---@type neotree.Config?
	---
	keys = {
		{
			"<leader>x", "<cmd>Neotree reveal<cr>", desc="Neotree reveal", silent=true
		},
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					[' x'] = 'close_window'
				}
			}
		}
	},
}
