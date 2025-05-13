{ config, pkgs, inputs, ... }:

let
  userPackages = import ./modules/packages.nix { inherit pkgs; };
in
{
  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";

  home.stateVersion = "24.11"; # Or the latest Home Manager release tag

  # Install packages from packages.nix

  imports = [
    ./modules/hyprland.nix # Import your Hyprland module (settings, etc.)
  ];

  # You can add other user-specific configurations here
}