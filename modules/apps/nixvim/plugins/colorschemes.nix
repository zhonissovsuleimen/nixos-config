{ lib, ... }:
{
  colorschemes.github-theme.enable = true;
  extraConfigLua = lib.mkAfter ''
    vim.cmd('colorscheme github_dark_high_contrast')
  '';
}
