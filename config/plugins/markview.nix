{
  plugins.markview = {
    enable = true;
  };

  autoCmd = [
    {
      event = "BufWritePost";
      pattern = [
        "*.md"
        "*.tex"
      ];
      desc = "Refresh Markview split window on file save";
      callback.__raw = ''
        function()
          local status, markview = pcall(require, "markview")
          if status then
            vim.cmd("Markview splitRedraw")
          end
        end
      '';
    }
  ];
}
