{ lib, ... }:
{
  plugins.crates = {
    enable = true;
    settings = {
      autoload = true;
      autoupdate = true;
      smart_insert = true;
    };
  };
}
