{
  plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;
    extensions.media-files = {
      enable = true;
      settings = {
        filetypes = [
          "png"
          "jpg"
          "jpeg"
          "gif"
          "webp"
          "avif"
        ];
      };
    };
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
        preview.mime_hook.__raw = ''
          function(filepath, bufnr, opts)
            local api = require "image"
            local preview_id = "telescope_image_id"
            api.clear(preview_id)
            local is_image = function(image_filepath)
              local image_extensions = { "png", "jpg", "jpeg", "gif", "webp", "avif" }
              local split_path = vim.split(image_filepath:lower(), ".", { plain = true })
              local extension = split_path[#split_path]
              return vim.tbl_contains(image_extensions, extension)
            end
            if is_image(filepath) then
              local image = api.from_file(filepath, {
                id = preview_id,
                buffer = bufnr,
                window = opts.winid,
                x = 0,
                y = 0,
                width = nil,
                height = nil,
              })
              if image ~= nil then
                image:render()
              end
            else
              require("telescope.previewers.utils").set_preview_message(
                bufnr,
                opts.winid,
                "Binary cannot be previewed"
              )
            end
          end
        '';
      };
    };
  };
}
