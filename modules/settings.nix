{config, pkgs, ...}:

{
  services.transmission = {
    enable = true;
    package = pkgs.transmission_4;
    settings = {
        download-dir = "/home/umakanth/games";
    };
  }
}