{
  settings = {
    "[nix]" = {
      "editor.defaultFormatter" = "aaronduino.nix-lsp";
    };
  };
  extensions = [
    {
      name = "nix-lsp";
      publisher = "aaronduino";
      version = "0.0.1";
      sha256 = "190pqcxlz98grigbppkrj5zvwk8d9si70na7jmilypaxn3zdmm9w";
    }
    {
      name = "nix-ide";
      publisher = "jnoortheen";
      version = "0.1.3";
      sha256 = "1c2yljzjka17hr213hiqad58spk93c6q6xcxvbnahhrdfvggy8al";
    }
  ];
}
