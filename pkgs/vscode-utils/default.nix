{ lib, callPackage, vscode-utils }:
let
  extension-set-utils = callPackage ./extension-set-utils.nix {};
in
rec {
  vscodeEnvFromExtensionSets = callPackage ./vscodeEnvFromExtensionSets.nix {
    inherit vscode-utils extension-set-utils;
  };
  settingsFromExtionsSets = extensionSets:
    builtins.toJSON (extension-set-utils.getMergedSettings extensionSets);
  extensionSet = {
    common = import ./extensionSets/common.nix;
    nix = import ./extensionSets/nix.nix;
    haskell = import ./extensionSets/haskell.nix;
    java = import ./extensionSets/java.nix;
  };
  extensionSets = lib.attrValues extensionSet;
}
