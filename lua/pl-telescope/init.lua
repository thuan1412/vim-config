local actions = require('telescope.actions')


require('telescope').setup {
	defaults = {
		find_command = {
			 "rg", "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case"
		},
    file_previewer = require'telescope.previewers'.cat.new,
	}
}
