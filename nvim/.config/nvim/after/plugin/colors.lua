function ApplyColours(colour)
	colour = colour or "tokyonight"
	vim.cmd.colorscheme(colour)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "Float", { bg = "none" })
end

ApplyColours()

