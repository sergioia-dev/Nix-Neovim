{
  description = "My Neovim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
    }:
    let
      lib = nixpkgs.lib;

      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      forAllSystems = lib.genAttrs supportedSystems;
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
        in
        let
          LSPs = with pkgs; [
            typescript-language-server
            lua-language-server
            vscode-langservers-extracted
            docker-language-server
            jdt-language-server
            bash-language-server
            nixd
            pyright
            rust-analyzer
          ];

          formatters = with pkgs; [
            stylua
            sql-formatter
            biome
            nixfmt
            black
            shfmt
            kulala-fmt
            rustfmt
          ];

          pluginDependencies = with pkgs; [
            ripgrep
            git
            lldb
            lazygit
            lazydocker
            jq
            lsof
            luaPackages.tree-sitter-cli
            luaPackages.jsregexp
          ];
        in
        {
          default = pkgs.callPackage ./neovim.nix {
            configuration = pkgs.runCommandLocal "configuration" { } ''
              mkdir -p $out
              cp -r ${./configuration}/* $out
            '';
            runtimeDependencies = LSPs ++ formatters ++ pluginDependencies;
            inherit pkgs-unstable;
          };
        }
      );

      apps = forAllSystems (system: {
        default = {
          type = "app";
          program = "${self.packages.${system}.default}/bin/nvim";
        };
      });

      devShells = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            buildInputs = [
              pkgs.luajit
            ];
          };
        }
      );

      meta = {
        description = ''
          === My custom Neovim configuration ===
          Build:
            - nix run .
            - nix build .
            - nix develop
        '';
      };
    };
}
