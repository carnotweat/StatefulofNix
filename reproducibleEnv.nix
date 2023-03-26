let
  pkgs = import <nixpkgs> {};
in {
  inherit (pkgs) git hello;
}

