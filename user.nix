{ config, pkgs, inputs, ... }:

let
  userPackages = import ./modules/packages.nix { inherit pkgs; };
in
{
  # Allow unfree software (This is typically set in your main NixOS config)
  # nixpkgs.config.allowUnfree = true;

  # User config
  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";

  home.stateVersion = "24.11"; # Or the latest Home Manager release tag

  # Install packages from packages.nix
  home.packages = userPackages; # No need for `with pkgs; [ ] ++`

  imports = [
    ./modules/hyprland.nix # Import your Hyprland module (settings, etc.)
  ];

  # You can add other user-specific configurations here
}