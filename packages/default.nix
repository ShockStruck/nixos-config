final: prev:
{
  custom = {
    bolt-launcher = prev.callPackage ./bolt-launcher { };
    brave = prev.callPackage ./brave { };
    freetube = prev.callPackage ./freetube { };
    heroic = prev.callPackage ./heroic { };
    kindlegen = prev.callPackage ./kindlegen { };
    lemacs = prev.callPackage ./lemacs { };
    lutris = prev.callPackage ./lutris { };
    plex-desktop = prev.callPackage ./plex-desktop { };
    plexamp = prev.callPackage ./plexamp{ };
    proton-ge-bin = prev.callPackage ./proton-ge-bin { };
    protonmail-desktop = prev.callPackage ./protonmail-desktop { };
    signal-desktop = prev.callPackage ./signal-desktop { };
    sticky-notes = prev.callPackage ./sticky-notes { };
    swhkd = prev.callPackage ./swhkd { };
    teams-for-linux = prev.callPackage ./teams-for-linux { };
    vesktop = prev.callPackage ./vesktop { };
    vscode = prev.callPackage ./vscode { };
  };
}
