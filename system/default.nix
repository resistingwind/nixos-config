{ ... }:
{
  imports = [
    ./cpu.nix
    ./boot.nix
    ./users.nix
    ./networking.nix
    ./packages.nix
  ];
}
