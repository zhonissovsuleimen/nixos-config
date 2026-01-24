{ lib, ... }:
{
  plugins.toggleterm.enable = true;

  keymaps = lib.mkAfter [
    {
      key = "<C-T>";
      action = "<cmd>ToggleTerm size=30<cr>";
      mode = ["n" "t"];
      options.desc = "Toggle Terminal";
    }
  ];
}
