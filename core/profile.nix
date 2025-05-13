{ config, pkgs, ... }:

{
  users.users.umakanth = {
    isNormalUser = true;
    description = "umakanth";
    extraGroups = [ "networkmanager" "wheel" "video"];
    packages = with pkgs; [ ]; # System-wide packages for the user, if any
  };

  services.printing.enable = true;
  services.openssh.enable = true;

  programs.nix-ld.enable = true;
}