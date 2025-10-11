{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;

    extraPackages = [ pkgs.wl-clipboard ];
    extraConfig = ''
      set number
      set relativenumber
      set clipboard+=unnamedplus

      set expandtab
      set shiftwidth=2
      set tabstop=2
      set softtabstop=2
      inoremap <S-Tab> <C-d>
    '';
  };
}

