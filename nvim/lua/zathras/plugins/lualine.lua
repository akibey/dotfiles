require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "carbonfox",
		component_separators = { left = "", right = "" },
		-- component_separators = { left = '', right = ''},
		-- section_separators = { left = '', right = ''},
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
			"packer",
			"alpha",
			"telescope",
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {
			"branch",
			"diff",
			{
				"diagnostics",
				sources = { "nvim_diagnostic", "nvim_lsp" },
				sections = { "error", "warn", "info", "hint" },
				diagnostics_color = {
					-- Same values as the general color option can be used here.
					error = "DiagnosticError", -- Changes diagnostics' error color.
					warn = "DiagnosticWarn", -- Changes diagnostics' warn color.
					info = "DiagnosticInfo", -- Changes diagnostics' info color.
					hint = "DiagnosticHint", -- Changes diagnostics' hint color.
				},
				symbols = { error = "E", warn = "W", info = "I", hint = "H" },
				colored = true, -- Displays diagnostics status in color if set to true.
				update_in_insert = false, -- Update diagnostics in insert mode.
				always_visible = false, --
			},
		},
		lualine_c = { "filename" },
		lualine_x = {
			"lsp_progress",
			"encoding",
			"fileformat",
			{ "filetype", colored = true, icon = { align = "left" } },
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
