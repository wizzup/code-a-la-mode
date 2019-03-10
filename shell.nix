# shell for working with Java (openJDK)

{ pkgs ? import <nixpkgs> {} }:
with pkgs;

mkShell {
  name = "java-sh";
  buildInputs = [
    openjdk11
    maven

    python3 # for starterkit
  ];

  shellHook = ''
    export PS1=$'\[\033[1;32m\][$name\u2234\W]\n$ \[\033[0m\]'
  '';
}
