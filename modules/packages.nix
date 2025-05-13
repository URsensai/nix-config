{ pkgs }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    google-chrome
    fastfetch
    git
    wget
    vscode
    lshw
    htop
    kitty
    libva-utils
    nvidia-vaapi-driver
    swaynotificationcenter
    wlr-randr
    ydotool
    wl-clipboard
    hyprland-protocols
    hyprpicker
    swayidle
    swaylock
    xdg-desktop-portal-hyprland
    hyprpaper
    wofi
    firefox-wayland
    swww
    grim
    xdg-utils
    xdg-desktop-portal
    qt5.qtwayland
    qt6.qmake
    qt6.qtwayland
    adwaita-qt
    adwaita-qt6
    hyprland
    glib
    eww
    lxqt.lxqt-policykit
    rofi-wayland
    rustup
    brightnessctl
    playerctl
    mpv
    slurp
    openvpn
    scribus
  ];
}