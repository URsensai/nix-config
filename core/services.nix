{config, pkgs, ...}:

{
  services.transmission = {
    enable = true;
    package = pkgs.transmission_4;
    settings = {
        download-dir = "/home/umakanth/games";
    };
  };
  services.gnome.gnome-keyring.enable = true;
  services.tumbler.enable = true;
  services.blueman.enable = true;
  services.printing.enable = true;
  services.openssh.enable = true;
  services.gvfs.enable = true;
}