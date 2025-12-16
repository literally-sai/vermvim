{
  plugins.lsp = {
    enable = true;
    servers = {
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      ts_ls.enable = true;
      clangd.enable = true;
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
    };
  };
}
