{
  outputs = { self, nixpkgs, }: {
    nixosConfigurations.mai = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ 
        ./configuration.nix
      ];
    };
  };
}
