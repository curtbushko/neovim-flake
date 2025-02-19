{
  description = "Curt Bushko neovim flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    neovim-nightly-overlay = { 
      url = "github:nix-community/neovim-nightly-overlay";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = {
    nixvim,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = {
        pkgs,
        system,
        ...
      }: let
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit pkgs;
          module = {
              imports = [ ./config ]; # import the module directly
              package = inputs.neovim-nightly-overlay.packages.${system}.default;
          };
          # You can use `extraSpecialArgs` to pass additional arguments to your module files
          extraSpecialArgs = {
            # inherit (inputs) foo;
            package = inputs.neovim-nightly-overlay.packages.${system}.default;
          };
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
      in {
        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = nvim;
        };
      };
    };
}
