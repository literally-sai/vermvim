{ pkgs, ... }:
{
  extraConfigLuaPre = ''
    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end
  '';
  plugins = {
    luasnip = {
      enable = true;
      fromVscode = [ { } ];
    };
    lspkind = {
      enable = true;
      settings.mode = "symbol_text";
      cmp = {
        enable = true;
        after = ''
          function(entry, vim_item, kind)
              local strings = vim.split(kind.kind, "%s", { trimempty = true })
              kind.kind = " " .. (strings[1] or "") .. " "
              kind.menu = "    (" .. (strings[2] or "") .. ")"
              return kind
          end
        '';
      };
    };
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-nvim-lua.enable = true;
    cmp_luasnip.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        snippet.expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';

        sources = [
          { name = "nvim_lsp"; }
          { name = "nvim_lsp_document_symbol"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "luasnip"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "tmux"; }
        ];
        window = {
          documentation.max_height = "math.floor(40 * (40 / vim.o.lines))";
          completion = {
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None";
            col_offset = -3;
            side_padding = 0;
          };
        };
        formatting = {
          fields = [
            "kind"
            "abbr"
            "menu"
          ];
        };
        mapping = {
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<Up>" = "cmp.mapping.select_prev_item()";
          "<Down>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-u>" = "cmp.mapping.scroll_docs(-4)";
          "<C-d>" = "cmp.mapping.scroll_docs(4)";
        };
      };
    };
  };

  plugins.friendly-snippets.enable = true;
  extraPlugins = with pkgs.vimPlugins; [
    vim-snippets
  ];
}
