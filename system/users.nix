{ pkgs, ... }:
{
  users.users."mai" = {
    isNormalUser = true;
    description = "Mai";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
