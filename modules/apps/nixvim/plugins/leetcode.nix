{ lib, ... }:
{
  plugins.leetcode = {
    enable = true;
    settings = {
      lang = "rust";
    };
  };
}
