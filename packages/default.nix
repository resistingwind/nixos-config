{ pkgs, ... }:
{
  imports = [
    ./vim.nix
  ];

  nixpkgs.overlays = [
    (final: super: {
      comic-true-mono = pkgs.callPackage ./comic-true-mono.nix {};
    })
  ];
}
