{ lib, ... }:
{
  plugins.neo-tree = {
    enable = true;
    settings = {
      close_if_last_window = true;
      filesystem = {
        follow_current_file = {
          enabled = true;
          leave_dirs_open = true;
        };
      };
    };
  };

  keymaps = lib.mkAfter [
    {
      key = "<leader>e";
      action = "<cmd>Neotree toggle reveal<cr>";
      mode = "n";
      options.desc = "Toggle Neotree";
    }
  ];
}
