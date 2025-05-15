{ pkgs, ... }:

{
  programs.starship = {
    enable = true;
    package = pkgs.starship;
    settings = {
      format = "$character$rust$directory$git_branch$git_status";

      rust = {
        style = "bold green";
      };

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };
    };
  };
}