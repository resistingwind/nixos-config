{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  imports =
  [ 
      ./hardware-configuration.nix
      ./desktop/default.nix 
      ./system/default.nix 
      ./packages/default.nix 
  ];

  system.stateVersion = "26.05"; 
}
