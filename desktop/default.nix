{ ... }:
{
  imports = [
    ./hyprland.nix
    ./fonts.nix
    ./sddm.nix
  ];
  
  services.logind.settings.Login.HandleLidSwitch= "ignore";
}

