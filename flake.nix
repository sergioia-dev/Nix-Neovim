{
  description = "My Neovim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-unstable,
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};

    LSPs = with pkgs; [
      typescript-language-server
      lua-language-server
      vscode-css-languageserver
      jdt-language-server
      bash-language-server
      yaml-language-server
      nixd
      pyright
      rust-analyzer
    ];

    formatters = with pkgs; [
      stylua
      rustfmt
      biome
      alejandra
      black
      shfmt
      prettier
    ];

    pluginDependencies = with pkgs; [
      ripgrep
      git
      lldb
      lazygit
      lazydocker
      jq
    ];
  in {
    packages.${system} = {
      default = pkgs.callPackage ./neovim.nix {
        configuration = pkgs.runCommandLocal "configuration" {} ''
          mkdir -p $out
          cp -r ${./configuration}/* $out
        '';
        runtimeDependencies = LSPs ++ formatters ++ pluginDependencies;
        inherit pkgs-unstable;
      };
    };

    apps.${system}.default = {
      type = "app";
      program = "${self.packages.${system}.default}/bin/nvim";
    };

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
