{ lib }:
rec {
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
  getMergedSettings = extensionSets:
    let
      mergeAttrsRecursive = builtins.foldl' lib.recursiveUpdate {};
    in
      mergeAttrsRecursive (lib.concatMap getSettings extensionSets);
  getMergedExtensions = extensionSets: lib.unique (lib.concatMap getExtensions extensionSets);
}
