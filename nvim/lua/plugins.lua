return {
  -- GRUVBOX
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},

  -- Markdown
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- LATEX
  {
    "lervag/vimtex",
    -- Only load vimtex when editing TeX files
    ft = { "tex", "plaintex", "latex" },
    config = function()
      -- 1) Basic settings (always in Lua, not Vimscript):
      vim.g.tex_flavor = "latex"        -- default flavor
      vim.g.vimtex_quickfix_mode = 0    -- don't open the quickfix automatically

      -- 2) Choose the compiler backend (e.g., latexmk):
      vim.g.vimtex_compiler_method = "latexmk"
      -- If you want custom latexmk options:
      -- vim.g.vimtex_compiler_latexmk = {
      --   build_dir = 'build',
      --   options = {
      --     '-pdf',
      --     '-interaction=nonstopmode',
      --     '-synctex=1',
      --   },
      -- }

      -- 3) Choose the viewer (e.g., Zathura, Sioyek, Skim, SumatraPDF, etc.)
      vim.g.vimtex_view_method = "skim"

      -- If you use Zathura and want forward search:
      -- vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
      -- For Sioyek, you might do:
      -- vim.g.vimtex_view_method = "sioyek"
      -- vim.g.vimtex_view_sioyek_exe = "/usr/bin/sioyek"

      -- More configuration references:
      -- https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt
    end
  },

  -- autopairs
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },

  -- FILE EXPLORER
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- Define the on_attach function
      local function my_on_attach(bufnr)
        local api = require("nvim-tree.api")

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom buffer-local mappings
        vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
        vim.keymap.set("n", "?",     api.tree.toggle_help,           opts("Help"))
      end

      -- Setup nvim-tree with the on_attach
      require("nvim-tree").setup({
        on_attach = my_on_attach,
        -- ...any other config
      })

      -- GLOBAL KEYMAP to toggle nvim-tree from anywhere
      vim.keymap.set("n", "<C-n>", function()
        require("nvim-tree.api").tree.toggle()
      end, { desc = "Toggle Nvim Tree" })
    end
  },

}


