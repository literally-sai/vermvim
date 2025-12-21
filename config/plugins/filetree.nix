{
  plugins.nvim-tree = {
    enable = true;
    settings = {
      sync_root_with_cwd = true;
      respect_buf_cwd = true;
      view.side = "right";
      update_focused_file = {
        enable = true;
        update_root = true;
      };
    };
  };
}
