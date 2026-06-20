{
  description = "Curt Bushko neovim flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    plugin-99 = {
      url = "github:ThePrimeagen/99";
      flake = false;
    };
    plugin-wayfinder = {
      url = "github:error311/wayfinder.nvim";
      flake = false;
    };
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
              # package = inputs.neovim-nightly-overlay.packages.${system}.default;
          };
          # You can use `extraSpecialArgs` to pass additional arguments to your module files
          extraSpecialArgs = {
            inherit inputs;
          };
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
        make-wrapper = pkgs.writeShellScriptBin "make" ''
          exec ${pkgs.go-task}/bin/task "$@"
        '';
      in {
        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = nvim;
        };

        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.git
            pkgs.nixd
            pkgs.alejandra
            pkgs.go-task
            make-wrapper
          ];

          shellHook = ''
            # Auto-pull if on main branch
            if [ "$(git rev-parse --abbrev-ref HEAD 2>/dev/null)" = "main" ]; then
              echo "On main branch, pulling latest changes..."
              git pull --quiet || true
            fi

            echo "✓ Neovim development environment loaded"
            echo ""
            echo "Quick start:"
            echo "  task --list              - Show all available tasks"
            echo "  task run                 - Test neovim with current config"
            echo "  task check               - Verify config is not broken"
            echo "  task build               - Build neovim package"
            echo ""
            echo "Common tasks:"
            echo "  task update              - Update flake inputs"
            echo "  task fmt                 - Format nix files"
            echo "  task gc                  - Garbage collect (5+ days old)"
            echo "  task repair              - Repair nix-store if needed"
            echo ""
            echo "Development:"
            echo "  Edit config in ./config/ directory"
            echo "  Add plugins in flake.nix inputs"
            echo ""
            echo "Tools available:"
            echo "  - Task: $(task --version)"
            echo "  - Git: $(git --version | head -n1)"
            echo "  - Nix: $(nix --version)"
            echo "  - Alejandra: Nix formatter"
          '';
        };
      };
    };
}
