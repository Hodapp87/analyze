{ghc}:
with (import <nixpkgs> {});

haskell.lib.buildStackProject {
  inherit ghc;
  name = "analyze";

  buildInputs = [ ];
  # buildInputs = [ glibcLocales ];
  
  # https://github.com/NixOS/nix/issues/318
  # https://github.com/commercialhaskell/stack/issues/2452
  LANG = "en_us.UTF-8";
}
