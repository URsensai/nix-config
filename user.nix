{ config, pkgs, inputs, ... }:

let
  userPackages = import ./modules/packages.nix { inherit pkgs; };
in
{
  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";

  home.stateVersion = "24.11"; # Or the latest Home Manager release tag
  nixpkgs.config.allowUnfree = true;
  # Install packages from packages.nix
  home.packages = userPackages ++ [ ];
  imports = [
    ./modules/hyprland.nix
    ./modules/settings.nix 
  ];

  # You can add other user-specific configurations here
}