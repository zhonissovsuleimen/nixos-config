{ lib, ... }:
{
  keymaps = lib.mkAfter [
    { key = "n"; action = ":lua custom_zz('n') <CR>"; mode = "n"; options.silent = true; }
    { key = "N"; action = ":lua custom_zz('N') <CR>"; mode = "n"; options.silent = true; }

    { key = "{"; action = ":lua custom_zz('{') <CR>"; mode = "n"; options.silent = true; }
    { key = "}"; action = ":lua custom_zz('}') <CR>"; mode = "n"; options.silent = true; }

    # { key = "<C-U>"; action = ":lua custom_zz('<C-U>', -999) <CR>"; mode = "n"; options.silent = true; }
    # { key = "<C-D>"; action = ":lua custom_zz('<C-D>', -999) <CR>"; mode = "n"; options.silent = true; }
  ];

  # keymaps that are overritten by plugins
  autoCmd = lib.mkAfter [
    {
      event = "VimEnter";
      command = "
        nnoremap <silent> % :lua custom_zz('<Plug>(MatchitNormalForward)') <CR>
      ";
    }
  ];

  extraConfigLua = lib.mkAfter ''
    _G.custom_zz = function (input, margin)
      margin = margin or 0

      local before_top = vim.fn.line("w0")
      local before_bot = vim.fn.line("w$")

      local cmd
      if vim.startswith(input, "<Plug>") then
        cmd = 'execute "normal \\' .. input .. '"'
      else
        cmd = 'normal! ' .. input
      end

      local ok, err = pcall(vim.cmd, cmd)
      if not ok then
        err = err:match("E%d+:%s*(.*)") or err
        print(err)
      end

      local after = vim.api.nvim_win_get_cursor(0)[1]
      local offscreen = (after < before_top - margin) or (after > before_bot + margin)

      local line_count = vim.fn.line('$')
      local half_window_height = math.floor(vim.api.nvim_win_get_height(0) / 2)
      local near_end = after > (line_count - half_window_height)

      local recenter = offscreen and not near_end

      if recenter then
        vim.cmd("normal! zz")
      end
    end
  '';

}
