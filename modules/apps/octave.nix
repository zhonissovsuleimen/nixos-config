{ pkgs, ... }:

{
  environment.systemPackages = [
    ((pkgs.octaveFull.override {
      graphicsmagick = pkgs.graphicsmagick.override {
        quantumdepth = 32;
      };
    }).withPackages (ps: [
      ps.image
    ]))
  ];
}
