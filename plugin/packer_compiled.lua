-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/thuando/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/thuando/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/thuando/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/thuando/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/thuando/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["awesome-vim-colorschemes"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/awesome-vim-colorschemes"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["coc-fzf"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/coc-fzf"
  },
  ["coc-tailwind-intellisense"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/coc-tailwind-intellisense"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["deoplete.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/deoplete.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  dracula = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/dracula"
  },
  fzf = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  neogit = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["neosnippet-snippets"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/neosnippet-snippets"
  },
  ["neosnippet.vim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/neosnippet.vim"
  },
  ["nvim-cheat.sh"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/nvim-cheat.sh"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-tree.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["one-small-step-for-vimkind"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/one-small-step-for-vimkind"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["space-vim-dark"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/space-vim-dark"
  },
  ["spelunker.vim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/spelunker.vim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-monokai-pro"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-monokai-pro"
  },
  ["vim-prisma"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-prisma"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-signature"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-speeddating"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-speeddating"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/thuando/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
