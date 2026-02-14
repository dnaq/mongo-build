{
  description = "Flake for mongodb 4.4";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {

    packages.aarch64-linux = 
      let pkgs = import nixpkgs {
        system = "aarch64-linux";
        config.allowUnfree = true;
      };
      in rec {
        default = pkgs.mongodb-7_0;
      };
  };
}
