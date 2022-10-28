local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
	["+"] = { "<C-a>", "increment number" },
	["-"] = { "<C-x>", "decrement number" },
	["."] = { "<cmd>tabnew<cr>", "new tab" },
	b = {
		name = "buffers",
		d = { "<cmd>bdelete<cr>", "close current buffer" },
		n = { "<cmd>bnext<cr>", "next buffer" },
		p = { "<cmd>bprevious<cr>", "previous buffer" },
	},
	l = {
		name = "lsp",
		f = {
			function()
				vim.lsp.buf.format({ async = true })
			end,
			"format",
		},
	},
	f = {
		name = "Telescope", -- optional group name
		b = { "<cmd>Telescope file_browser<cr>", "file browser" },
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
		g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
		h = { "<cmd>Telescope help_tags<cr>", "help_tags" },
		s = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "current buffer search" },
		t = { "<cmd>Telescope buffers<cr>", "buffers" },
	},
	-- { prefix = "<leader>" },
	n = {
		name = "remove",
		h = { "<cmd>nohl<cr>", "clear search highlight" },
	},
	s = {
		name = "split",
		v = { "<C-w>v", "split window vertically" },
		h = { "<C-w>s", "split window vertically" },
		e = { "<C-w>=", "split window vertically" },
		x = { ":close<cr>", "close split" },
		m = { ":MaximizerToggle<CR>", "Toggle split maximizer" },
	},
}, { prefix = "<leader>" })
