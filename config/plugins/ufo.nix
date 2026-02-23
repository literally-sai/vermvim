{
  plugins.nvim-ufo = {
    enable = true;
    settings = {
      provider_selector = # lua
        ''
          function()
            return { "lsp", "indent" }
          end
        '';
      preview.mappings = {
        close = "q";
        switch = "K";
      };
    };
  };

  opts = {
    foldcolumn = "1";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
  };
}
