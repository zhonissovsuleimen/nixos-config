{
  plugins.lsp.enable = true;

  lsp = {
    keymaps = [
      {
        key = "<leader>ld";
        lspBufAction = "definition";
      }
      {
        key = "<leader>lr";
        lspBufAction = "references";
      }
      {
        key = "<M-e>";
        lspBufAction = "hover";
      }
    ];

    servers = {
      bashls.enable = true;
      clangd.enable = true;
      rust-analyzer.enable = true;
      nixd.enable = true;
    };
  };
}
