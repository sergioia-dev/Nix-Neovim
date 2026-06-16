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
            tailwindcss-language-server
            nixd
            pyright
            rust-analyzer
            ltex-ls
            harper
          ];

          formatters = with pkgs; [
            stylua
            sql-formatter
            rustfmt
            biome
            nixfmt
            black
            shfmt
            kulala-fmt
          ];

          pluginDependencies = with pkgs; [
            ripgrep
            git
            lldb
            lazygit
            lazydocker
            jq
            lsof
            tectonic
            biber
            yazi
          ] ++ lib.optionals (system != "x86_64-darwin") [
            opencode
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
              self.packages.${system}.default
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
