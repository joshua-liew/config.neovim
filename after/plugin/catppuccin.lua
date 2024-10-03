-- https://github.com/catppuccin/nvim
require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    no_italic = true, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    color_overrides = {
	latte = {
		blue		= "#589DF6",
		green		= "#21B089",
		lavender	= "#7287FD",
		mauve		= "#B481F0",
		peach		= "#FE640B",
		pink		= "#944D95",
		red         = "#F9555F",
		rosewater	= "#DC8A78",
		teal		= "#1D9EE7",
		yellow		= "#FEF02A",
	}
    },
    integrations = {
	treesitter	= true,
	harpoon		= true,
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
