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
      {
        key = "<M-a>";
        action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      }
    ];

    servers = {
      bashls.enable = true;
      clangd.enable = true;
      rust_analyzer.enable = true;
      nixd.enable = true;
    };
  };
}
