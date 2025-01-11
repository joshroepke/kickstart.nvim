return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
  keys = {
    { '<leader>n', ':NvimTreeToggle<CR>', desc = 'Toggle NvimTree', silent = true },
    { '<leader>r', ':NvimTreeRefresh<CR>', desc = 'Refresh NvimTree', silent = true },
    { '<leader>f', ':NvimTreeFindFile<CR>', desc = 'Find file in NvimTree', silent = true },
  },
  opts = {
    view = {
      width = 30,
      side = 'left',
      mappings = {
        list = {
          { key = 'h', action = 'close_node', desc = 'Close folder' },
          { key = 'l', action = 'edit', desc = 'Open file/folder' },
          { key = 'a', action = 'create', desc = 'Create file/folder' },
          { key = 'd', action = 'remove', desc = 'Delete file/folder' },
          { key = 'r', action = 'rename', desc = 'Rename file/folder' },
          { key = 'y', action = 'copy_name', desc = 'Copy name to clipboard' },
          { key = 'Y', action = 'copy_path', desc = 'Copy full path to clipboard' },
          { key = 'x', action = 'cut', desc = 'Cut file/folder' },
          { key = 'p', action = 'paste', desc = 'Paste file/folder' },
          { key = 's', action = 'split', desc = 'Open file in horizontal split' },
          { key = 'v', action = 'vsplit', desc = 'Open file in vertical split' },
        },
      },
    },
    renderer = {
      icons = {
        glyphs = {
          folder = {
            default = '',
            open = '',
          },
        },
      },
    },
    actions = {
      open_file = {
        quit_on_open = true,
      },
    },
  },
}
