{
  plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;
    settings = {
      pickers = {
        find_files = {
          hidden = true;
        };
        live_grep = {
          additional_args = [ "--hidden" ];
        };
      };
      defaults = {
        file_ignore_patterns = [
          ".git/"
          "node_modules"
          "venv"
        ];
      };
    };
  };
}
