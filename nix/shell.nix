# shell.nix
{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSEnv {
  name = "simpleFHS";
  targetPkgs = pkgs: (with pkgs; [
    cmake
    python312Packages.cmake
  ]);
  multiPkgs = pkgs: (with pkgs; [
    cmake
    python312Packages.cmake
  ]);
  runScript = "nix-shell nix/pyenv.nix";
}).env
