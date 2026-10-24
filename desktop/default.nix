{ ... }:
{
  imports = [
    ./hyprland.nix
    ./sddm.nix
    ./fonts.nix
  ];
  
  services.logind.settings.Login.HandleLidSwitch= "ignore";
}

