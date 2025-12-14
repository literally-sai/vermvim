{
  keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      action.__raw = ''
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end
      '';
      options = {
        desc = "Format buffer with conform.nvim";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>bnext<cr>";
    }
    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>bprev<cr>";
    }
    {
      mode = [
        "n"
      ];
      key = "<C-c>";
      action = "<cmd>%y+<CR>";
      options = {
        desc = "Copy entire buffer to clipboard";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ln";
      action.__raw = ''
        function()
        vim.o.relativenumber = not vim.o.relativenumber
        end
      '';
      options = {
        desc = "Toggle relative line numbers";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = ''<cmd>Telescope find_files<cr>'';
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = ''<cmd>Telescope live_grep<cr>'';
    }
    {
      mode = "n";
      key = "<C-n>";
      action = "<cmd>NvimTreeToggle<cr>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = ''<cmd>lua if require("nvim-tree.view").is_visible() then require("nvim-tree.api").tree.focus() end<cr>'';
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>th";
      action = ''<cmd>lua require("telescope.builtin").colorscheme({ enable_preview = true })<cr>'';
      options = {
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "s"
        "t"
      ];
      key = "<M-i>";
      action = "<cmd>ToggleTerm direction=float<cr>";
      options = {
        desc = "Floating ToggleTerm";
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "s"
        "t"
      ];
      key = "<M-h>";
      action = "<cmd>ToggleTerm direction=horizontal<cr>";
      options = {
        desc = "Horizontal ToggleTerm";
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "s"
        "t"
      ];
      key = "<M-v>";
      action = "<cmd>ToggleTerm direction=vertical<cr>";
      options = {
        desc = "Vertical ToggleTerm";
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "s"
        "t"
      ];
      key = "<M-t>";
      action = "<cmd>ToggleTerm direction=tab<cr>";
      options = {
        desc = "Tab ToggleTerm";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bd<cr>";
      options = {
        desc = "Delete current buffer";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "<cmd>Telescope buffers<cr>";
      options = {
        desc = "List buffers";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>TroubleToggle<cr>";
      options = {
        desc = "Toggle Trouble";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>xw";
      action = "<cmd>Trouble workspace_diagnostics<cr>";
      options = {
        desc = "Workspace diagnostics";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>xd";
      action = "<cmd>Trouble document_diagnostics<cr>";
      options = {
        desc = "Document diagnostics";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<cr>";
      options = {
        desc = "Open LazyGit";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<cr>";
      options = {
        desc = "Help tags";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fk";
      action = "<cmd>Telescope keymaps<cr>";
      options = {
        desc = "Keymaps";
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "i"
      ];
      key = "<C-k>";
      action = "<cmd>lua vim.lsp.buf.hover()<cr>";
      options = {
        desc = "LSP: Show hover documentation / signature help";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<cmd>wincmd h<cr>";
      options = {
        desc = "Move focus to the left window";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<cmd>wincmd l<cr>";
      options = {
        desc = "Move focus to the right window";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<cmd>wincmd j<cr>";
      options = {
        desc = "Move focus to the lower window";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>wincmd k<cr>";
      options = {
        desc = "Move focus to the upper window";
        silent = true;
      };
    }
  ];
  extraConfigLua = ''
    vim.cmd([[cabbrev .. cd ..]])
    vim.cmd([[cabbrev W w !sudo tee % > /dev/null]])
    vim.cmd([[cabbrev Q q!]])
  '';
}
