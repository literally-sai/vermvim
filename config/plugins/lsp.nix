{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      ts_ls.enable = true;
      clangd = {
        enable = true;
        cmd = [
          "clangd"
          "--fallback-style={SortIncludes: Never}"
          "--background-index"
          "--clang-tidy"
          "--completion-style=detailed"
          "--function-arg-placeholders"
          "--fallback-style=llvm"
          "--header-insertion=iwyu"
          "--pch-storage=memory"
          "--log=error"
        ];
        extraOptions = {
          init_options = {
            fallbackFlags = ["--std=c++23"];
          };
        };
      };
      nil_ls.enable = true;
      nil_ls.settings.nix.flake.autoArchive = true;
      cssls.enable = true;
      jsonls.enable = true;
      dockerls.enable = true;
      docker_compose_language_service.enable = true;
      tailwindcss.enable = true;
      html.enable = true;
      emmet_ls.enable = true;
      terraformls.enable = true;
      lua_ls.enable = true;
    };
  };

  plugins = {
    lsp-format.enable = false;
    lspsaga = {
      enable = true;
      settings.lightbulb.enable = false;
    };
  };
}
