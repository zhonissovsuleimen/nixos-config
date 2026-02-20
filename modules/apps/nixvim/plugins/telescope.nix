{ lib, ... }:
{
  plugins.telescope = {
    enable = true;
  };

  dependencies.ripgrep.enable = true;

  keymaps = lib.mkAfter [
    {
      key = "<leader>km";
      action = "<cmd>Telescope keymaps<cr>";
      mode = "n";
      options.desc = "Open key maps in Telescope";
    }
    {
      key = "<leader>ff";
      action = "<cmd>Telescope live_grep<cr>";
      mode = "n";
      options.desc = "Open live grep in Telescope";
    }
  ];
}
