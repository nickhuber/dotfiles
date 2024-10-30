local vim = vim
local Plug = vim.fn["plug#"]

vim.call("plug#begin")

-- Themes
Plug("Mofiqul/vscode.nvim")
-- This is a syntax highlighter
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate"})
-- This is a code completion thing
Plug("neoclide/coc.nvim", { ["branch"] = "release"})
-- This is a file system explorer
Plug("preservim/nerdtree")

vim.call("plug#end")


vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set number relativenumber")

local map = vim.api.nvim_set_keymap
map("n", "<leader>n", ":NERDTreeFocus<CR>", {noremap = true, silent = false})
map("n", "<C-n>", ":NERDTree<CR>", {noremap = true, silent = false})
map("n", "<C-t>", ":NERDTreeToggle<CR>", {noremap = true, silent = false})
map("n", "<C-f>", ":NERDTreeFind<CR>", {noremap = true, silent = false})


-- Theme stuff
vim.o.background = "light"
local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    -- style = 'light'

    -- Who would want a transparent background
    transparent = false,

    -- Enable italic comment
    italic_comments = true,

    -- Underline `@markup.link.*` variants
    underline_links = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#000000',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
-- require('vscode').load()

-- load the theme without affecting devicon colors.
vim.cmd.colorscheme "vscode"


require"nvim-treesitter.configs".setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installec = { "python", "vim", "vimdoc", "lua", "markdown", "markdown_inline", "c" },

  
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    addimional_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true
  }
}
