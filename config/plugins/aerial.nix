{ ... }:

{
  plugins.aerial = {
    enable = true;
    settings = {
      backends = [
        "lsp"
        "treesitter"
        "markdown"
      ];
      layout = {
        default_direction = "prefer_right";
        min_width = 30;
      };
      manage_folds = true;
      link_folds_to_tree = true;
      nerd_font = true;
    };
  };
}
