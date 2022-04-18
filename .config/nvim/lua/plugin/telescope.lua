local status, telescope = pcall(require, "telescope")
if (not status) then return end


local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", ";f", ":lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", ";r", ":lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "\\", ":lua require('telescope.builtin').buffers()<cr>", opts)
keymap("n", ";;", ":lua require('telescope.builtin').help_tags()<cr>", opts)

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { "node_modules" },

    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
}
