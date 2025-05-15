# core/default.nix
{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./audio.nix
      ./boot.nix
      ./core-package.nix
      ./networking.nix
      ./nix-setting.nix 
      ./profile.nix
      ./system.nix
      ./umakanth.nix
      ./xserver.nix
      ./version.nix
      ./nvidia.nix
      ./services.nix
      ./thunar.nix
    ];
}