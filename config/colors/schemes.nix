{ pkgs, ... }:
{
  colorschemes = {
    base16 = {
      enable = true;
      autoLoad = true;
      colorscheme = null;
      setUpBar = false;
      settings = {
        cmp = true;
        illuminate = true;
        indentblankline = true;
        lsp_semantic = true;
        mini_completion = true;
        telescope = true;
        telescope_borders = false;
      };
    };
  };
  extraPlugins =
    let
      themesDir = ./themes;
      allFiles = builtins.attrNames (builtins.readDir themesDir);
      themeFiles = builtins.filter (name: builtins.match ".*\\.nix" name != null) allFiles;
      themeNames = map (name: builtins.head (builtins.split "\\.nix" name)) themeFiles;
      customThemesPlugin = pkgs.vimUtils.buildVimPlugin {
        pname = "custom-base16-themes";
        version = "local";
        src = pkgs.runCommand "custom-base16-themes" { } ''
          mkdir -p $out/colors
          ${builtins.concatStringsSep "\n" (
            map (
              name:
              let
                palette = import "${themesDir}/${name}.nix";
              in
              ''
                cat > $out/colors/${name}.lua <<'EOF'
                -- ${name} - custom base16 theme without prefix
                vim.cmd([[hi clear]])
                if vim.fn.exists('syntax_on') then
                  vim.cmd([[syntax reset]])
                end
                vim.o.background = 'dark' -- Adjust to 'light' if needed for specific themes
                vim.o.termguicolors = true
                local palette = {
                  ${builtins.concatStringsSep "\n " (
                    builtins.attrValues (builtins.mapAttrs (key: value: "${key} = '${value}',") palette)
                  )}
                }
                require('base16-colorscheme').setup(palette)
                vim.g.colors_name = '${name}'
                EOF
              ''
            ) themeNames
          )}
        '';
      };
    in
    [ customThemesPlugin ];
  extraConfigLua = ''
    vim.cmd.colorscheme "night"
  '';
}
