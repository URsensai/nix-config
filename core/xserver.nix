{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm = {
    enable = true;
    wayland = true;
    session = {
      name = "Hyprland";
      command = "${pkgs.hyprland}/bin/Hyprland";
    };
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Disable SDDM
  services.displayManager.sddm.enable = false;

  # Enable the graphical target
  systemd.targets.graphical.enable = true;

  #services.greetd = {
    #enable = true;
   # settings = {
      #default_session = {
        #command = "${pkgs.hyprland}/bin/Hyprland";
        #user = "umakanth";
      #};
    #};
  #};
}