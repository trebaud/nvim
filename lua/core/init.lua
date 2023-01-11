local global = require("core.global")
local vim = vim

local disable_distribution_plugins = function()
  vim.g.loaded_gzip = 1
  vim.g.loaded_tar = 1
  vim.g.loaded_tarPlugin = 1
  vim.g.loaded_zip = 1
  vim.g.loaded_zipPlugin = 1
  vim.g.loaded_getscript = 1
  vim.g.loaded_getscriptPlugin = 1
  vim.g.loaded_vimball = 1
  vim.g.loaded_vimballPlugin = 1
  vim.g.loaded_matchit = 1
  vim.g.loaded_matchparen = 1
  vim.g.loaded_2html_plugin = 1
  vim.g.loaded_logiPat = 1
  vim.g.loaded_rrhelper = 1
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
  vim.g.loaded_netrwSettings = 1
  vim.g.loaded_netrwFileHandlers = 1
end

local load_core = function()
  require("core.helper")

  local pack = require("core.pack")

  -- print(vim.inspect(debug.traceback()))

  disable_distribution_plugins()
  vim.g.mapleader = "\\"
  local installed = pack.ensure_plugins()


    if pcall(require, "impatient") then
   require("core.options")
    require("core.mapping")
    -- require("core.dot_repeat")
    require("keymap")
    require("core.event")
    _G.lprint = require("utils.log").lprint
    pack.load_compile()
    require("core.lazy")
    end
 

end

load_core()
