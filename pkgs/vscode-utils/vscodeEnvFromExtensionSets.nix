{ lib, vscode-utils, extension-set-utils }:
with (extension-set-utils);
mutableExtensionsFile: extensionSets:
vscode-utils.vscodeEnv {
  inherit mutableExtensionsFile;
  settings = getMergedSettings extensionSets;
  nixExtensions = getMergedExtensions extensionSets;
}
