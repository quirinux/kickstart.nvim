vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },
})

require('mini.comment').setup()
require('mini.move').setup()
require('mini.pairs').setup()
require('mini.splitjoin').setup()
require('mini.cursorword').setup()
require('mini.indentscope').setup()
require('mini.tabline').setup()

require('mini.hipatterns').setup({
  highlighters = {
    fixme = { pattern = 'FIXME', group = 'MiniHipatternsFixme' },
    hack  = { pattern = 'HACK',  group = 'MiniHipatternsHack'  },
    todo  = { pattern = 'TODO',  group = 'MiniHipatternsTodo'  },
    note  = { pattern = 'NOTE',  group = 'MiniHipatternsNote'  },
  }
})
