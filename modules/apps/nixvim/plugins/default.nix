{
  plugins = {
    comment.enable = true;
    fidget.enable = true;
    gitsings.enable = true;
    lsp-format.enable = true;
    lualine.enable = true;
    multicursors.enable = true;
    nvim-autopairs.enable = true;
    scrollview.enable = true;
    vim-surround.enable = true;
    web-devicons.enable = false;
  };

  imports = [
    ./cmp.nix
    ./colorschemes.nix
    ./crates.nix
    ./leetcode.nix
    ./lsp.nix
    ./neo-tree.nix
    ./telescope.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./undotree.nix
  ];
}
