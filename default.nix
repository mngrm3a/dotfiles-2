{ pkgs ? import <nixpkgs> {} }: {
  vscode-utils = pkgs.callPackage ./pkgs/vscode-utils (
    with pkgs; { inherit vscode-utils; }
  );
}
