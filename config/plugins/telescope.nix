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
            local is_image = function(image_filepath)
              local image_extensions = { "png", "jpg", "jpeg", "gif", "webp", "avif" }
              local split_path = vim.split(image_filepath:lower(), ".", { plain = true })
              local extension = split_path[#split_path]
              return vim.tbl_contains(image_extensions, extension)
            end
            if is_image(filepath) then
              local term = vim.api.nvim_open_term(bufnr, {})
              local function send_output(_, data, _)
                for _, d in ipairs(data) do
                  vim.api.nvim_chan_send(term, d .. "\r\n")
                end
              end
              vim.fn.jobstart({
                "catimg",
                "-r",
                "2",
                filepath,
              }, { on_stdout = send_output, stdout_buffered = true, pty = true })
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
