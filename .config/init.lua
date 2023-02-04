local config = {

  colorscheme = "gruvbox-baby",

  options = {
    opt = {
      relativenumber = true,
      number = true,
      spell = false,
      signcolumn = "no",
      wrap = true,
      colorcolumn = "80,120",
      swapfile = false,
      cursorline = true,
      mouse = "a",
      clipboard = "unnamedplus",
      encoding = "UTF-8",
      fileencoding = "UTF-8",
      tabstop = 4,
      showtabline = 0,
      laststatus = 0,
    },
    g = {
      mapleader = " ",
      cmp_enabled = true,
      autopairs_enabled = false,
      diagnostics_enabled = true,
      status_diagnostics_enabled = true,
      autoformat_enabled = false,
    },
  },

  default_theme = {
    plugins = {
      ["neo-tree"] = true,
      ["nvim-web-devicons"] = true,
      ["which-key"] = true,
      aerial = true,
      beacon = true,
      bufferline = true,
      highlighturl = true,
      indent_blankline = true,
      notify = true,
      rainbow = true,
      symbols_outline = true,
      telescope = true,
      ["neovim-session-manager"] = false,
      ["nvim-tree"] = false,
      dashboard = false,
      hop = false,
      lightspeed = false,
      vimwiki = false,
    },
  },

  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    mappings = {
      n = {},
    },
  },

  mappings = {
    vim.keymap.set("", ";", ":"),
    vim.keymap.set("n", "<A-r>", "i<C-^><esc>l"),
    vim.keymap.set("i", "<A-r>", "<C-^>"),
    vim.keymap.set("c", "<A-r>", "i<C-^><esc>l"),
    vim.keymap.set("v", "<A-r>", "<C-^>"),

    n = {

      ["<F5>"] = false,
      ["<F17>"] = false,
      ["<F29>"] = false,
      ["<F6>"] = false,
      ["<F9>"] = false,
      ["<F10>"] = false,
      ["<F11>"] = false,
      ["<F23>"] = false,
      ["<leader>tp"] = {
        function() astronvim.toggle_term_cmd "python3.11" end,
        desc = "ToggleTerm python",
      },

      ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
      ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
      ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
      ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

      -- ["<leader>ul"] = { "<cmd>lua vim.o.ls = 2<cr>", desc = "ls" },

      vim.keymap.set("n", "<leader>n", ":ASToggle<CR>"),

      -- vim.keymap.set("n", "<F2>", ":!toggle_alacritty_opacity"),
      ["<F2>"] = { "<cmd>!toggle_vim_opacity<cr><cr>", desc = "toggle vim opacity" },
      ["<F3>"] = { "<cmd>!set_alacritty_opacity2<cr><cr>", desc = "toggle alacritty opacity" },

      ["<leader>ar"] = { "<cmd>AstroReload<cr>", desc = "AstroReload" },
      ["<leader>aa"] = { "<cmd>tabnew /home/rozhelluk/.config/nvim/lua/user/init.lua<cr>:q<cr>", desc = "AstroConfig" },
      ["<leader>au"] = { "<cmd>AstroUpdate<cr>", desc = "AstroUpdate" },
      ["<leader>av"] = { "<cmd>AstroVersion<cr>", desc = "AstroVersion" },

      vim.keymap.set("n", "<F5>", ":w<CR>:exec '!python3.11 -B' shellescape(@%, 1)<CR>"),
      vim.keymap.set("n", "<F4>", ":w<CR>:vsplit term://python3.11 -B %<cr>i"),
      vim.keymap.set("n", "<F8>", ":w<CR>:exec '!g++ -Wall % && ./a.out' shellescape(@%, 1)<CR>"),
      vim.keymap.set("n", "<F9>", ":w<CR>:vsplit term://g++ -Wall % && ./a.out<cr>i"),
      vim.keymap.set("n", "<F6>", "vim.bo.filetype"),

      ["<leader>r"] = { ":LspRestart<cr>", desc = "LspRestart" }, -- change description but the same command
    },
    t = {
      ["<esc>"] = false,
    },

    -- i = {
    vim.keymap.set("i", "<F5>", "<Esc>:w<CR>:exec '!python3.11 -B' shellescape(@%, 1)<CR>"),
    vim.keymap.set("i", "<F4>", "<Esc>:w<CR>:vsplit term://python3.11 -B %<cr>i"),
    -- },
  },

  plugins = {
    init = {
      ["goolord/alpha-nvim"] = { disable = true },
      "luisiacc/gruvbox-baby",
      "Pocco81/auto-save.nvim",
      "XkbSwitchEnabled",
      "iamcco/markdown-preview.nvim",
    },
    dapui = function(config) -- parameter is the default setup config table
      local dap = require "dap"
      dap.listeners.after.event_initialized["dapui_config"] = nil
      dap.listeners.before.event_terminated["dapui_config"] = nil
      dap.listeners.before.event_exited["dapui_config"] = nil

      -- modify config table if necessary to configure `nvim-dap-ui`
      return config
    end,
  },

  cmp = {
    source_priority = {
      nvim_lsp = 1000,
      luasnip = 750,
      buffer = 500,
      path = 250,
    },
  },

  ["which-key"] = {
    register = {
      n = {
        ["<leader>"] = {
          ["b"] = { name = "Buffer" },
          ["a"] = { name = "Astro" },
          ["r"] = { name = "Astro" },
        },
      },
    },
  },

  polish = function()
    vim.cmd [[ autocmd BufNewFile,BufRead *.html set filetype=html ]]
    vim.cmd [[ autocmd FileType htmldjango,html,javascript,lua,yaml,yml,cpp setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab]]
  end,

  -- updater = {
  --   channel = "nightly",
  -- },
  --
  dap = {
    adapters = {
      python = {
        type = "executable",
        command = "path/to/virtualenvs/debugpy/bin/python",
        args = { "-m", "debugpy.adapter" },
      },
    },
    configurations = {
      python = {
        {
          type = "python",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          pythonPath = function()
            local cwd = vim.fn.getcwd()
            if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
              return cwd .. "/venv/bin/python"
            elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
              return cwd .. "/.venv/bin/python"
            elseif vim.fn.executable(cwd .. "/env/bin/python") == 1 then
              return cwd .. "/env/bin/python"
            elseif vim.fn.executable(cwd .. "/.env/bin/python") == 1 then
              return cwd .. "/.env/bin/python"
            else
              return "/usr/bin/python3.11"
            end
          end,
        },
      },
    },
  },
}
return config
