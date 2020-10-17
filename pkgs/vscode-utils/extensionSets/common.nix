{
  settings = {
    "telemetry.enableTelemetry" = false;
    "window.autoDetectColorScheme" = true;
    "window.zoomLevel" = 0;
    "workbench.preferredLightColorTheme" = "Quiet Light";
    "workbench.preferredDarkColorTheme" = "Monokai Dimmed";
    "workbench.iconTheme" = "material-icon-theme";
    "workbench.enableExperiments" = false;
    "workbench.editor.enablePreviewFromQuickOpen" = false;
    "terminal.integrated.fontSize" = 14;
    "editor.formatOnSave" = true;
    "editor.fontSize" = 14;
    "editor.renderWhitespace" = "all";
    "editor.minimap.enabled" = false;
    "editor.rulers" = [
      80
    ];
    "diffEditor.renderSideBySide" = true;
    "diffEditor.ignoreTrimWhitespace" = false;
    "git.autoRepositoryDetection" = "subFolders";
  };
  extensions = [
    {
      name = "nix-env-selector";
      publisher = "arrterian";
      version = "0.1.2";
      sha256 = "1n5ilw1k29km9b0yzfd32m8gvwa2xhh6156d4dys6l8sbfpp2cv9";
    }
    {
      name = "gitlens";
      publisher = "eamodio";
      version = "10.2.2";
      sha256 = "00fp6pz9jqcr6j6zwr2wpvqazh1ssa48jnk1282gnj5k560vh8mb";
      settings = {
        "gitlens.views.compare.files.layout" = "list";
        "gitlens.codeLens.scopes" = [
          "document"
          "containers"
        ];
        "gitlens.statusBar.reduceFlicker" = true;
        "gitlens.views.fileHistory.location" = "explorer";
        "gitlens.views.lineHistory.location" = "explorer";
        "gitlens.views.compare.location" = "gitlens";
        "gitlens.views.search.location" = "gitlens";
        "gitlens.views.repositories.location" = "scm";
        "gitlens.views.repositories.showBranchComparison" = false;
        "gitlens.views.repositories.branches.layout" = "list";
        "gitlens.views.repositories.files.compact" = false;
      };
    }
    {
      name = "git-graph";
      publisher = "mhutchie";
      version = "1.26.0";
      sha256 = "0zvxsbx26frsawmm4ad15wbi312df4vs890pj45h0y4mrhbdmc8s";
      settings = {
        "git-graph.commitDetailsView.autoCenter" = false;
        "git-graph.commitDetailsView.location" = "Docked to Bottom";
      };
    }
    {
      name = "gitstash";
      publisher = "arturock";
      version = "3.3.0";
      sha256 = "1ncwp86bcp6i1yfkd6ph39g4dc4l7nkbrbs6a214nsgvr0fk78x4";
    }
    {
      name = "material-icon-theme";
      publisher = "PKief";
      version = "4.3.0";
      sha256 = "1a69kdmhgd4cplwl5x17kv6l5hnpyms7qjqrgj7m4wpmwqnj081h";
      settings = {
        "material-icon-theme.folders.theme" = "specific";
        "material-icon-theme.folders.color" = "#90a4ae";
        "material-icon-theme.hidesExplorerArrows" = false;
      };
    }
  ];
}
