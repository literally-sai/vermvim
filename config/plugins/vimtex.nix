{ pkgs, ... }:
{
  plugins.vimtex = {
    enable = true;
    texlivePackage = pkgs.texliveFull;
    settings = {
      compiler = "latexmk";
      view_method = "general";
      view_general_viewer = "zathura";
      view_general_options = "--synctex-forward @line:@col:@tex @pdf";
    };
  };
}
