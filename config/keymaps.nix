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
      action = "<cmd>bnext<CR>";
    }
    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>bprev<CR>";
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
      action = ''<cmd>Telescope find_files<CR>'';
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = ''<cmd>Telescope live_grep<CR>'';
    }
    {
      mode = "n";
      key = "<C-n>";
      action = "<cmd>NvimTreeToggle<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = ''<cmd>lua if require("nvim-tree.view").is_visible() then require("nvim-tree.api").tree.focus() end<CR>'';
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>th";
      action = ''<cmd>lua require("telescope.builtin").colorscheme({ enable_preview = true })<CR>'';
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
      action = "<cmd>ToggleTerm direction=float<CR>";
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
      action = "<cmd>ToggleTerm direction=horizontal<CR>";
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
      action = "<cmd>ToggleTerm direction=vertical<CR>";
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
      action = "<cmd>ToggleTerm direction=tab<CR>";
      options = {
        desc = "Tab ToggleTerm";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bd<CR>";
      options = {
        desc = "Delete current buffer";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "<cmd>Telescope buffers<CR>";
      options = {
        desc = "List buffers";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>TroubleToggle<CR>";
      options = {
        desc = "Toggle Trouble";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>xw";
      action = "<cmd>Trouble workspace_diagnostics<CR>";
      options = {
        desc = "Workspace diagnostics";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>xd";
      action = "<cmd>Trouble document_diagnostics<CR>";
      options = {
        desc = "Document diagnostics";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "Open LazyGit";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<CR>";
      options = {
        desc = "Help tags";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fk";
      action = "<cmd>Telescope keymaps<CR>";
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
      action = "<cmd>lua vim.lsp.buf.hover()<CR>";
      options = {
        desc = "LSP: Show hover documentation / signature help";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<cmd>wincmd h<CR>";
      options = {
        desc = "Move focus to the left window";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<cmd>wincmd l<CR>";
      options = {
        desc = "Move focus to the right window";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<cmd>wincmd j<CR>";
      options = {
        desc = "Move focus to the lower window";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>wincmd k<CR>";
      options = {
        desc = "Move focus to the upper window";
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "i"
      ];
      key = "<leader>md";
      action = "<cmd>Markview splitToggle<CR>";
      options = {
        desc = "View markdown in split view";
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
