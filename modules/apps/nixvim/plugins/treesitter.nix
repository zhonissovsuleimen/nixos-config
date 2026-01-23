{ pkgs, lib, ... }:
{
  plugins. treesitter = {
    enable = true;
    highlight.enable = true;
    indent.enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      cpp
      cuda
      nix
      rust
    ];
  };
}
