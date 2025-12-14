{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lsp_fallback = true;
        timeout_ms = 500;
      };
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
        rust = [ "rustfmt" ];
        nix = [ "alejandra" ];
        c = [ "clang_format" ];
        cpp = [ "clang_format" ];
        lua = [ "stylua" ];
        dockerfile = [ "hadolint" ];
      };
    };
  };
}
