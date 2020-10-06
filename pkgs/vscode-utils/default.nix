{ lib, callPackage, vscode-utils }:
rec {
  vscodeEnvFromExtensionSets = callPackage ./vscodeEnvFromExtensionSets.nix {
    inherit vscode-utils;
  };
  extensionSet = {};
  extensionSets = lib.attrValues extensionSet;
}
