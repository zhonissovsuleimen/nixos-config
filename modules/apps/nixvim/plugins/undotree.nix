{ lib, ... }:
{
  plugins.undotree.enable = true;

  keymaps = lib.mkAfter [
    {
      key = "<M-t>";
      action = "<cmd>ToggleTerm<cr>";
      mode = ["n" "t"];
      options.desc = "Toggle Terminal";
    }
  ];
}
