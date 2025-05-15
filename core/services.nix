{ config, pkgs, ... }:

{
  # Networking and Remote Access
  services.openssh.enable = true;

  # File Sharing and System Integration
  services.gvfs.enable = true;
  services.printing.enable = true;
  services.blueman.enable = true;

  # Desktop Environment Functionality
  services.gnome.gnome-keyring.enable = true;
  services.tumbler.enable = true;

  # Specific Applications/Services
  services.transmission = {
    enable = true;
    package = pkgs.transmission_4;
    settings = {
      download-dir = "/home/umakanth/games";
    };
  };
}