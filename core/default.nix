{ inputs, config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./audio.nix
      ./boot.nix
      ./core-package.nix
      ./networking.nix
      ./nix-seeting.nix
      ./profile.nix
      ./system.nix
      ./umakanth.nix
      ./xserver.nix
    ];
}