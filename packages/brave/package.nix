# Expression generated by update.sh; do not edit it by hand!
{ stdenv, callPackage, ... }@args:

let
  pname = "brave";
  version = "1.73.101";

  allArchives = {
    aarch64-linux = {
      url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_arm64.deb";
      hash = "sha256-0nV+NxiXM+m1GbAxECXC/8QWiOyVaMb63JmGtrIFcqM=";
    };
    x86_64-linux = {
      url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
      hash = "sha256-yz3EENDg0khJYVF/W6RAvO3qWoDqs9oFH22WxqWay78=";
    };
    aarch64-darwin = {
      url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-v${version}-darwin-arm64.zip";
      hash = "sha256-EQjgQAI+limWvU/qcU/MaP4I2zWtqXz5R3zPvMlZnCc=";
    };
    x86_64-darwin = {
      url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-v${version}-darwin-x64.zip";
      hash = "sha256-11oDvX3O20N2q6vKd7r9rfUhRTkMe1dRQSQZ27QKKDs=";
    };
  };

  archive =
    if builtins.hasAttr stdenv.system allArchives then
      allArchives.${stdenv.system}
    else
      throw "Unsupported platform.";

in
callPackage ./make-brave.nix (removeAttrs args [ "callPackage" ]) (
  archive
  // {
    inherit pname version;
  }
)