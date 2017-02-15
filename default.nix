let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
in rec {
  pycppenv = stdenv.mkDerivation rec {
  name = "pycppenv";
  buildInputs = [
    pkgs.python35
    pkgs.python35Packages.numpy
    pkgs.gcc6
    pkgs.cmake
    # uses boost 1.63.0 not yet in nixpkg upstream
    # https://github.com/ilya-kolpakov/nixpkgs/commit/6d823521 
    pkgs.boost163
  ];
 };
}
