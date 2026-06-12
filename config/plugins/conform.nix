{ pkgs, ... }:

{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        javascript = [
          "prettierd"
          "prettier"
        ];
        javascriptreact = [
          "prettierd"
          "prettier"
        ];
        typescript = [
          "prettierd"
          "prettier"
        ];
        typescriptreact = [
          "prettierd"
          "prettier"
        ];
        css = [
          "prettierd"
          "prettier"
        ];
        html = [
          "prettierd"
          "prettier"
        ];
        json = [ "jq" ];
        markdown = [
          "prettierd"
          "prettier"
        ];
        xml = [
          "xmlformat"
          "xmllint"
        ];
        rust = [ "rustfmt" ];
        nix = [ "nixfmt-rfc-style" ];
        c = [ "clang_format" ];
        cpp = [ "clang_format" ];
        lua = [ "stylua" ];
        dockerfile = [ "hadolint" ];
      };

      formatters = {
        clang_format = {
          prepend_args = [ "-style={SortIncludes: Never}" ];
        };
      };
    };
  };

  extraPackages = [
    pkgs.xmlformat
    pkgs.nixfmt-rfc-style
  ];
}
