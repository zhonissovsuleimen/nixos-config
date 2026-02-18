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
        key = "<M-r>";
        lspBufAction = "rename";
      }
      {
        key = "<M-a>";
        action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      }
    ];

    servers = {
      bashls.enable = true;
      clangd.enable = true;
      nixd.enable = true;
      rust_analyzer.enable = true;
      wgsl_analyzer.enable = true;
      basedpyright.enable = true;
    };
  };
}
