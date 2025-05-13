{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  #services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  systemd.targets.graphical.enable = true;
}