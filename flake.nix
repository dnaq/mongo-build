{
  description = "Flake for mongodb 4.4";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {

    packages.aarch64-linux = 
      let pkgs = nixpkgs.legacyPackages.aarch64-linux;
      in rec {
        default = pkgs.mongodb-4_4;
      };
  };
}
