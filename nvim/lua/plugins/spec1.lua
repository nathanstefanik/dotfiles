return {

  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},

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
  }
}


