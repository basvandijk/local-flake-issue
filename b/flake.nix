{
  description = "Flake B";

  inputs = {
    a.url = "path:../a";
    nixpkgs.follows = "a/nixpkgs";
    flake-utils.follows = "a/flake-utils";
  };

  outputs = { self, a, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system: {
      packages.default = a.packages."${system}".default;
    });
}
