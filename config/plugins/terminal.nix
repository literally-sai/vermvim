{
  plugins.toggleterm = {
    enable = true;
    settings = {
      size = {
        __raw = ''
          function(term)
            if term.direction == "horizontal" then
              return 15
            elseif term.direction == "vertical" then
              return vim.o.columns * 0.4
            end
          end
        '';
      };
      shade_terminals = true;
      shading_factor = -30;
      start_in_insert = true;
      insert_mappings = true;
      terminal_mappings = true;
      persist_size = true;
      persist_mode = false;
      auto_scroll = true;
      close_on_exit = false;
      float_opts = {
        border = "curved";
        winblend = 3;
        title_pos = "left";
        width = {
          __raw = ''function() return math.floor(vim.o.columns * 0.65) end'';
        };
        height = {
          __raw = ''function() return math.floor(vim.o.lines * 0.6) end'';
        };
      };
    };
  };
}
