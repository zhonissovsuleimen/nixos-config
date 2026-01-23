{ lib, ... }:
{
  plugins.toggleterm.enable = true;

  keymaps = lib.mkAfter [
    {
      key = "<leader>ut";
      action = "<cmd>UndotreeToggle<cr>";
      mode = "n";
      options.desc = "Toggle Undotree";
    }
  ];
}
