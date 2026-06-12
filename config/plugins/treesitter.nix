{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = false;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = true;
      };
    };
  };
}
