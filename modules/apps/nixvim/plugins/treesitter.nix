{ pkgs, ... }:
{
  dependencies = {
    tree-sitter.enable = true;
  };

  plugins.treesitter = {
    enable = true;
    highlight.enable = true;
    indent.enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      cpp
      cuda
      matlab
      nix
      python
      rust
      wgsl
    ];
  };

}
