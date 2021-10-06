local g = vim.g
g.nvim_tree_side = 'right'
g.nvim_tree_width = 40
g.nvim_tree_hide_dotfiles = 0 -- 0 by default, this option hides files and folders starting with a dot `.`
g.nvim_tree_indent_markers = 1 -- "0 by default, this option shows indent markers when folders are open
g.nvim_tree_auto_ignore_ft = {'startify', 'dashboard'} -- empty by default, don't auto open tree on specific filetypes.
g.nvim_tree_quit_on_open = 0
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
nvimTreeBindings = {
    -- ["<CR>"] = ":YourVimFunction()<cr>",
    -- ["u"] = ":lua require'some_module'.some_function()<cr>",

    -- default mappings
	{ key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
	{ key = {"<2-RightMouse>", "<C-}>"},    cb = tree_cb("cd") },
	{ key = "v",                        	cb = tree_cb("vsplit") },
	{ key = "s",                        	cb = tree_cb("split") },
	{ key = "<C-t>",                        cb = tree_cb("tabnew") },
	{ key = ">",                            cb = tree_cb("prev_sibling") },
	{ key = "<",                            cb = tree_cb("next_sibling") },
	{ key = "P",                            cb = tree_cb("parent_node") },
	{ key = "h",  		                cb = tree_cb("close_node") },
	{ key = "l",                       	cb = tree_cb("open_node") },
	{ key = "<Tab>",                        cb = tree_cb("preview") },
	{ key = "K",                            cb = tree_cb("first_sibling") },
	{ key = "J",                            cb = tree_cb("last_sibling") },
	{ key = "I",                            cb = tree_cb("toggle_ignored") },
	{ key = "H",                            cb = tree_cb("toggle_dotfiles") },
	{ key = "R",                            cb = tree_cb("refresh") },
	{ key = "a",                            cb = tree_cb("create") },
	{ key = "d",                            cb = tree_cb("remove") },
	{ key = "r",                            cb = tree_cb("rename") },
	{ key = "<C->",                         cb = tree_cb("full_rename") },
	{ key = "x",                            cb = tree_cb("cut") },
	{ key = "c",                            cb = tree_cb("copy") },
	{ key = "p",                            cb = tree_cb("paste") },
	{ key = "y",                            cb = tree_cb("copy_name") },
	{ key = "Y",                            cb = tree_cb("copy_path") },
	{ key = "gy",                           cb = tree_cb("copy_absolute_path") },
	{ key = "[c",                           cb = tree_cb("prev_git_item") },
	{ key = "}c",                           cb = tree_cb("next_git_item") },
	{ key = "-",                            cb = tree_cb("dir_up") },
	{ key = "q",                            cb = tree_cb("close") },
	{ key = "?",                           cb = tree_cb("toggle_help") },
}

g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1
}

g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git     = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
    folder  = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
}
g.nvim_web_devicons = 1

require('nvim-tree').setup {
   lsp_diagnostics = false,
   disable_netrw = true,
   hijack_netrw = true,
   ignore_ft_on_setup = { "dashboard" },
   auto_close = false,
   open_on_tab = false,
   hijack_cursor = true,
   update_cwd = true,
   update_focused_file = {
      enable = true,
      update_cwd = true,
   },
   view = {
      allow_resize = true,
      side = "right",
      width = 45,
   },
   bindings = nvimTreeBindings
}

local _M = {}
return _M

