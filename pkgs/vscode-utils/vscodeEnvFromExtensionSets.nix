{ lib, vscode-utils }:
let
  getSettings = { settings, extensions }:
    [ settings ] ++ builtins.map (lib.attrByPath [ "settings" ] {}) extensions;
  getExtensions = { settings, extensions }:
    let
      getExtension =
        { name
        , publisher
        , version
        , sha256
        , ...
        }: {
          inherit name publisher version sha256;
        };
    in
      builtins.map getExtension extensions;
  mergeAttrsRecursive = builtins.foldl' lib.recursiveUpdate {};
  mergeExtensionSets = definitions: {
    settings = mergeAttrsRecursive (lib.concatMap getSettings definitions);
    nixExtensions = lib.unique (lib.concatMap getExtensions definitions);
  };
in
mutableExtensionsFile: extensionSets:
  with (mergeExtensionSets extensionSets);
  vscode-utils.vscodeEnv {
    inherit nixExtensions settings mutableExtensionsFile;
  }
