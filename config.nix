{
    buildSet = "all";
    buildInfrastructure = "all";
    hackage.version = {
        apply-refact = "latest";
        ghcid = "latest";
        hlint = "latest";
        stylish-haskell = "latest";
    };

    haskell-nix.checkMaterialization = false;
    haskell-nix.platformSensitive = [
        "ghcid"
    ];
    # DESIGN: https://github.com/input-output-hk/hackage.nix/blob/master/index-state-hashes.nix
    haskell-nix.hackage.index = {
        state = "2021-02-27T00:00:00Z";
        sha256 = "f8ef4679f4c3f0c7a075dfef715f1db1b51e3934dc28cef9b3f83b2e1f1e2f77";
    };
    haskell-nix.nixpkgs-pin = "nixpkgs-2009";
    nixpkgs = {
        allowUnfree = true;
        ungoogled-chromium = {
            enablePepperFlash = false;
        };
    };
}
