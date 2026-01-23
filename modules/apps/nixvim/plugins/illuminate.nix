{ lib, ... }:
{
  plugins.illuminate = {
    enable = true;
    settings = {
      providers = [
        "lsp"
        "treesitter"
      ];
    };
  };
}
