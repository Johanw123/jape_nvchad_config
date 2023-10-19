---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["go"] = {
     "<Cmd>ClangdSwitchSourceHeader<CR>",
     "Switch header/source"
    }

    
  },
}

-- more keybinds!

return M
