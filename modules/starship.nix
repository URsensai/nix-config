{ pkgs, ... }: 

{
  programs.starship = {
    enable = true;
    package = pkgs.starship;
    settings = {
      format = "$character$rust$python$directory$git_branch$git_status";

      rust = {
        style = "bold green";
      };

      python = {
        format = "via [🐍](bold yellow) [$version](bold yellow)]";
      };

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };
    };
  };
}