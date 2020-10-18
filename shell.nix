{ pkgs ? import <nixpkgs> {}, dotnix ? import ./. { inherit pkgs; } }:

let
  vscode = with (dotnix.vscode-utils);
    vscodeEnvFromExtensionSets
      ./.vscode-extensions.nix
      (with extensionSet; [ common nix ]);
in
pkgs.mkShell {
  nativeBuildInputs = with pkgs;[ vscode rnix-lsp nixpkgs-fmt ];
  buildInputs = [];
}
