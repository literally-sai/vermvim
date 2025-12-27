{ pkgs, ... }:
{
  plugins.image = {
    enable = true;
    settings = {
      backend = "kitty";
      integrations.markdown = {
        enabled = true;
        clear_in_insert_mode = false;
        download_remote_images = true;
        only_render_image_at_cursor = false;
        filetypes = [
          "markdown"
          "vimwiki"
        ];
      };
      max_height_window_percentage = 50;
      hijack_file_patterns = [
        "*.png"
        "*.jpg"
        "*.jpeg"
        "*.gif"
        "*.webp"
        "*.avif"
      ];
    };
  };

  extraPackages = [ pkgs.imagemagick ];
}
