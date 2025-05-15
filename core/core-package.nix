{pkgs, ...}: 

{  
  nixpkgs.config.allowUnfree = true;
  programs.hyprland.enable = true;
  environment.systemPackages = [
    pkgs.git
    pkgs.wget
    pkgs.lshw
    pkgs.htop
    pkgs.kitty
    pkgs.libva-utils
    pkgs.nvidia-vaapi-driver
    pkgs.glib
    pkgs.eww
    pkgs.rustup
    pkgs.brightnessctl
    pkgs.playerctl
    pkgs.mpv
    pkgs.neovim
    pkgs.ripgrep
    pkgs.fzf
    pkgs.tmux
    pkgs.bat
    pkgs.fd
    pkgs.transmission_4-qt
  ];
}
